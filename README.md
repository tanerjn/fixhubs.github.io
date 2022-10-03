[![Deploy static content to Pages](https://github.com/tanerjn/fixhubs.github.io/actions/workflows/pages.yml/badge.svg)](https://github.com/tanerjn/fixhubs.github.io/actions/workflows/pages.yml)
[![Push Docker](https://github.com/tanerjn/fixhubs.github.io/actions/workflows/docker.yml/badge.svg)](https://github.com/tanerjn/fixhubs.github.io/actions/workflows/docker.yml)

#FIXHUB installation guide

<img width="1280" alt="Screenshot 2022-09-30 at 17 58 02" src="https://user-images.githubusercontent.com/25350481/193310069-402be6e6-3e33-4b3b-87b3-893ed0cdf04a.png">

Image: docker pull tanermetin/fixhubs.de
Flask: flask run -p 3000
Docker: docker run -d -p 5000:5000 tanermetin/fixhubs.de

Make sure to connect to the right DB. If you don't have one, create as below.


## ✨ Set up the MySql Database

**Note:** Make sure your Mysql server is properly installed and accessible. 

> **Step 1** - Create the MySql Database to be used by the app

- `Create a new MySql` database
- `Create a new user` and assign full privilegies (read/write)

<br />

> **Step 2** - Edit the `.env` to match your MySql DB credentials. Make sure `DB_ENGINE` is set to `mysql`.

- `DB_ENGINE`  : `mysql` 
- `DB_NAME`    : default value = `tanerjn_db`
- `DB_HOST`    : default value = `localhost`
- `DB_PORT`    : default value = `3306`
- `DB_USERNAME`: default value = `tanerjn_db_usr`
- `DB_PASS`    : default value = `pass`

<br />

Here is a sample:  

```txt
# .env sample

DEBUG=False                   # False enables the MySql Persistence

DB_ENGINE=mysql               # Database Driver
DB_NAME=tanerjn_flask         # Database Name
DB_USERNAME=tanerjn_flask_usr # Database User
DB_PASS=STRONG_PASS_HERE      # Password 
DB_HOST=localhost             # Database HOST, default is localhost 
DB_PORT=3306                  # MySql port, default = 3306 
```

<br />


```

<br />

### 👉 Set Up for `Unix`, `MacOS` 

> Install modules via `VENV`  

```bash
$ virtualenv env
$ source env/bin/activate
$ pip3 install -r requirements.txt
```

<br />

> Set Up Flask Environment

```bash
$ export FLASK_APP=app.py
$ export FLASK_ENV=development
```

<br />

> Start the app

```bash
$ flask run
```

At this point, the app runs at `http://127.0.0.1:5000/`. 

<br />


## ✨ Code-base structure

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


