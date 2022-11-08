[![Deploy static content to Pages](https://github.com/tanerjn/fixhubs.github.io/actions/workflows/pages.yml/badge.svg)](https://github.com/tanerjn/fixhubs.github.io/actions/workflows/pages.yml)
[![Push Docker](https://github.com/tanerjn/fixhubs.github.io/actions/workflows/docker.yml/badge.svg)](https://github.com/tanerjn/fixhubs.github.io/actions/workflows/docker.yml)


<img width="1280" alt="Screenshot 2022-09-30 at 17 58 02" src="https://user-images.githubusercontent.com/25350481/193310069-402be6e6-3e33-4b3b-87b3-893ed0cdf04a.png">

Image: docker pull tanermetin/fixhubs.de
<br />
Flask: flask run -p 3000
<br />
Docker: docker run -d -p 5000:5000 tanermetin/fixhubs.de


```



## ✨ Code-base

The project is coded using blueprints, app factory pattern, dual configuration profile (development and production) and an intuitive structure presented bellow:

```bash
< PROJECT ROOT >
   |
   |-- apps/
   |    |
   |    |-- home/                           # A simple app that serve HTML files
   |    |    |-- routes.py                  # Define app routes
   |    |
   |    |-- authentication/                 # Handles auth routes (login and register)
   |    |    |-- routes.py                  # Define authentication routes  
   |    |    |-- models.py                  # Defines models  
   |    |    |-- forms.py                   # Define auth forms (login and register) 
   |    |
   |    |-- static/
   |    |    |-- <css, JS, images>          # CSS files, Javascripts files
   |    |
   |    |-- templates/                      # Templates used to render pages
   |    |    |-- includes/                  # HTML chunks and components
   |    |    |    |-- navigation.html       # Top menu component
   |    |    |    |-- sidebar.html          # Sidebar component
   |    |    |    |-- footer.html           # App Footer
   |    |    |    |-- scripts.html          # Scripts common to all pages
   |    |    |
   |    |    |-- layouts/                   # Master pages
   |    |    |    |-- base-fullscreen.html  # Used by Authentication pages
   |    |    |    |-- base.html             # Used by common pages
   |    |    |
   |    |    |-- accounts/                  # Authentication pages
   |    |    |    |-- login.html            # Login page
   |    |    |    |-- register.html         # Register page
   |    |    |
   |    |    |-- home/                      # UI Kit Pages
   |    |         |-- index.html            # Index page
   |    |         |-- 404-page.html         # 404 page
   |    |         |-- *.html                # All other pages
   |    |    
   |  config.py                             # Set up the app
   |    __init__.py                         # Initialize the app
   |
   |-- requirements.txt                     # App Dependencies
   |
   |-- .env                                 # Inject Configuration via Environment
   |-- app.py                               # Start the app - WSGI gateway
   |
   |-- ************************************************************************
```

<br />

  
<img width="1008" alt="Screenshot 2022-09-30 at 18 06 35" src="https://user-images.githubusercontent.com/25350481/193311677-a3cbf69d-e053-4240-8ba9-6a35dae2b30b.png">


