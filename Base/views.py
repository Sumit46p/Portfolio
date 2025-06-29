from django.shortcuts import render, redirect
from django.contrib import messages
from django.core.mail import send_mail
from django.conf import settings
from .models import Project, Skill, Contact
from .forms import ContactForm


def home(request):
    featured_projects = Project.objects.filter(featured=True)[:3]
    skills = Skill.objects.all().order_by('category', 'name')

    # Group skills by category
    skills_by_category = {}
    for skill in skills:
        if skill.category not in skills_by_category:
            skills_by_category[skill.category] = []
        skills_by_category[skill.category].append(skill)

    context = {
        'featured_projects': featured_projects,
        'skills_by_category': skills_by_category,
    }
    return render(request, 'home.html', context)


def projects(request):
    all_projects = Project.objects.all()
    context = {
        'projects': all_projects,
    }
    return render(request, 'projects.html', context)


def contact(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            # Save to database
            contact = Contact.objects.create(
                name=form.cleaned_data['name'],
                email=form.cleaned_data['email'],
                subject=form.cleaned_data['subject'],
                message=form.cleaned_data['message']
            )

            # Send email notification (optional)
            try:
                send_mail(
                    f"Portfolio Contact: {form.cleaned_data['subject']}",
                    f"From: {form.cleaned_data['name']} ({form.cleaned_data['email']})\n\n{form.cleaned_data['message']}",
                    settings.DEFAULT_FROM_EMAIL,
                    [settings.CONTACT_EMAIL],
                    fail_silently=False,
                )
            except:
                pass  # Email sending is optional

            messages.success(request, 'Thank you for your message! I\'ll get back to you soon.')
            return redirect('contact')
    else:
        form = ContactForm()

    return render(request, 'contact.html', {'form': form})
