-- Create sample projects
INSERT INTO portfolio_project (title, description, image, github_url, live_url, technologies, featured, created_at) VALUES
('E-Commerce Platform', 'A full-featured e-commerce platform built with Django and React. Features include user authentication, product catalog, shopping cart, and payment integration.', 'https://via.placeholder.com/400x300', 'https://github.com/johndoe/ecommerce', 'https://ecommerce-demo.com', 'Django, React, PostgreSQL, Stripe', true, datetime('now')),
('Task Management App', 'A collaborative task management application with real-time updates, team collaboration features, and project tracking capabilities.', 'https://via.placeholder.com/400x300', 'https://github.com/johndoe/taskmanager', 'https://taskmanager-demo.com', 'Django, Vue.js, WebSockets, Redis', true, datetime('now')),
('Weather Dashboard', 'A responsive weather dashboard that displays current conditions and forecasts using multiple weather APIs with beautiful data visualizations.', 'https://via.placeholder.com/400x300', 'https://github.com/johndoe/weather', 'https://weather-demo.com', 'JavaScript, Chart.js, Weather API', true, datetime('now')),
('Blog Platform', 'A modern blogging platform with markdown support, comment system, and social sharing features.', 'https://via.placeholder.com/400x300', 'https://github.com/johndoe/blog', 'https://blog-demo.com', 'Django, Bootstrap, SQLite', false, datetime('now')),
('Portfolio Website', 'A responsive portfolio website showcasing projects and skills with modern design and smooth animations.', 'https://via.placeholder.com/400x300', 'https://github.com/johndoe/portfolio', 'https://johndoe-portfolio.com', 'HTML, CSS, JavaScript', false, datetime('now'));

-- Create sample skills
INSERT INTO portfolio_skill (name, level, category) VALUES
('Python', 90, 'Backend'),
('Django', 85, 'Backend'),
('JavaScript', 88, 'Frontend'),
('React', 82, 'Frontend'),
('Vue.js', 75, 'Frontend'),
('HTML/CSS', 95, 'Frontend'),
('PostgreSQL', 80, 'Database'),
('MySQL', 75, 'Database'),
('Git', 90, 'Tools'),
('Docker', 70, 'Tools'),
('AWS', 65, 'Cloud'),
('Linux', 80, 'Tools');
