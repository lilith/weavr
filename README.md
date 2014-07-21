User
- birthdate


Profile
- User
- Name
- Incarnations

rails generate migration add_birth_date_to_user birthdate:date


rails generate scaffold Profile user:belongs_to name:string 
rails generate migration add_pid_to_profile pid:uuid


rails generate scaffold Incarnation profile:belongs_to type:string title:string name:string gender:string other_gender:string gold:integer gems:integer hitpoints:integer max_hitpoints:integer mana:integer max_mana:integer experience:integer level:integer turns:integer location:references coroutine:binary display:text



Incarnation
- type
- Profile
- World?
- gender
- othergender
- Gold (int)
- Gems (int)
- Hitpoints (int)
- MaxHitpoints
- Mana (int)
- MaxMana
- Experience (int)
- Level (int)
- Title
- turns (int)
- Location
- Coroutine
- Display

rails generate scaffold Mod pid:uuid parent:belongs_to name:string title:text description:text creator:references



Mod
- pid
- name
- title
- description
- parent (module)
- creator (profile)

- locations
- hooks
- handlers

rails generate scaffold Location mod:belongs_to name:string title:text text:text choices:text choices_expandable:boolean code:text 


Location
- mod
- name
- title
- text
- choices
- choices_expandable
- code

rails generate scaffold ExtraChoices mod:belongs_to title:string choice_location:belongs_to  destination:belongs_to priority:float

ExtraChoices
- mod
- from_location
- to_location
- title
- priority:float

rails generate scaffold Hooks mod:belongs_to location:references  name:string type:string 


Hooks
- mod
- location
- name
- type (beforeload, afterload, event)

rails generate scaffold Handler mod:belongs_to hook:belongs_to code:text priority:float

Handlers
- mod
- hook
- code
- priority


rails generate migration add_current_incarnation_to_profile current_incarnation:belongs_to

rails g migration rename_incarnation_type_to_kind


rails g migration rename_hook_type_to_kind



Dwelling
- owner(profile)
- name
- etc


DwellingKeys
- dwelling
- user



ModulePreferences
- module
- prefs

We later hash every version of a serialized module to implement versioning.

Suggest edit vs edit. Textonly change vs code.
Permissions are (module | moduletree | hook) + permission + (role/user)

permissions - owner, coder, writer,  player


Tests run at two levels - module level, and world level


WorldVersion
- worldhash
- modulecommits

WorldTestResults
- worldhash
- errors
- result


WorldVersionBranches
- branchname
- worldhash

When tests pass on 



ModuleSet

ModuleTestResults
- modulehash
- errors
- success

ModuleCommits
- modulepid
- hash
- message
- author
- datetime
- parents
- modulehash

ModuleVersions
- hash
- contents






Weavr
=========

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Diagnostics
-----------

This application was built with recipes that are NOT known to work together.

This application was built with preferences that are NOT known to work
together.

If the application doesn’t work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include these diagnostics:

We’d also like to know if you’ve found combinations of recipes or
preferences that do work together.

Recipes:

* controllers
* core
* deployment
* email
* extras
* frontend
* gems
* git
* init
* learn_rails
* models
* prelaunch
* rails_bootstrap
* rails_devise
* rails_devise_pundit
* rails_foundation
* rails_omniauth
* rails_signup_download
* railsapps
* readme
* routes
* saas
* setup
* testing
* tests4
* views

Preferences:

* git: true
* apps4: none
* dev_webserver: webrick
* prod_webserver: thin
* database: postgresql
* templates: slim
* tests: none
* frontend: bootstrap3
* email: smtp
* authentication: omniauth
* omniauth_provider: google_oauth2
* authorization: pundit
* form_builder: simple_form
* starter_app: admin_app
* rvmrc: false
* quiet_assets: true
* local_env_file: figaro
* better_errors: true
* pry: true
* github: true
* deployment: capistrano3

Ruby on Rails
-------------

This application requires:

-   Ruby
-   Rails

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Database
--------

This application uses PostgreSQL with ActiveRecord.

Development
-----------

-   Template Engine: Slim
-   Testing Framework: Test::Unit
-   Front-end Framework: Bootstrap 3.0 (Sass)
-   Form Builder: SimpleForm
-   Authentication: OmniAuth
-   Authorization: None
-   Admin: None

Email
-----

The application is configured to send email using a SMTP account.

Email delivery is disabled in development.

Getting Started
---------------

Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Documentation and Support
-------------------------

This is the only documentation.

#### Issues

Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Similar Projects
----------------

Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Contributing
------------

If you make improvements to this application, please share with others.

-   Fork the project on GitHub.
-   Make your feature addition or bug fix.
-   Commit with Git.
-   Send the author a pull request.

If you add functionality to this application, create an alternative
implementation, or build an application that is similar, please contact
me and I’ll add a note to the README so that others can find your work.

Credits
-------

Lorem ipsum dolor sit amet, consectetur adipiscing elit.

License
-------

Lorem ipsum dolor sit amet, consectetur adipiscing elit.
