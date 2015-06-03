# Welcome_to_Rails project
  * This is my first project using Rails.
  * Using URLs you are able to add/edit/delete/view the contents of a db.
  * default database contains a User table, with first_name, last_name, and age.

## Rails version 4.2.1


## Do the following to use this program

* Fork this repo.
* Clone this repo.
* `bundle install` to install all gems required.
* `rake db:migrate` to run the migration and update the database.
* `rake db:seed` to populate your db with 50 randomly generated users(via <a href="https://rubygems.org/gems/faker/versions/1.4.3">faker</a>).
* `rails s` to start your local server.

## The following will allow you to access your local server and the data saved on the database.
```
  * http://localhost:3000/users HTTP/1.1
      will return a list of all the users stored in the db.
  * http://localhost:3000/users/1 HTTP/1.1
      will return the user with id = 1.
  * http://localhost:3000/users/9999999 HTTP/1.1
      will return an error unless there is a user with requested id.
  * http://localhost:3000/users?first_name=s
      will return users with names starting with 's'.
  * http://localhost:3000/users?limit=10&offset=10
      will return 10 users starting with the 10th.
  * http://localhost:3000/users/1/delete
      will delete the user with id = 1.
  * http://localhost:3000/users/create?first_name=Justin&last_name=Herrick&age=99
      will create a new user with specified parameters and display said user.
```


# Tree

```
.
├── Gemfile
├── Gemfile.lock
├── README.rdoc
├── Rakefile
├── app
│   ├── assets
│   │   ├── images
│   │   ├── javascripts
│   │   │   ├── application.js
│   │   │   └── users.coffee
│   │   └── stylesheets
│   │       ├── application.css
│   │       └── users.scss
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── concerns
│   │   └── users_controller.rb
│   ├── helpers
│   │   ├── application_helper.rb
│   │   └── users_helper.rb
│   ├── mailers
│   ├── models
│   │   ├── concerns
│   │   └── user.rb
│   └── views
│       ├── layouts
│       │   └── application.html.erb
│       └── users
├── bin
│   ├── bundle
│   ├── rails
│   ├── rake
│   ├── setup
│   └── spring
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── initializers
│   │   ├── assets.rb
│   │   ├── backtrace_silencers.rb
│   │   ├── cookies_serializer.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   ├── mime_types.rb
│   │   ├── session_store.rb
│   │   └── wrap_parameters.rb
│   ├── locales
│   │   └── en.yml
│   ├── routes.rb
│   └── secrets.yml
├── config.ru
├── db
│   ├── development.sqlite3
│   ├── migrate
│   │   └── 20150602174435_create_users.rb
│   ├── schema.rb
│   └── seeds.rb
├── lib
│   ├── assets
│   └── tasks
├── log
│   └── development.log
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   ├── favicon.ico
│   └── robots.txt
├── test
│   ├── controllers
│   │   └── users_controller_test.rb
│   ├── fixtures
│   │   └── users.yml
│   ├── helpers
│   ├── integration
│   ├── mailers
│   ├── models
│   │   └── user_test.rb
│   └── test_helper.rb
├── tmp
│   ├── cache
│   │   └── assets
│   ├── pids
│   │   └── server.pid
│   ├── sessions
│   └── sockets
└── vendor
    └── assets
        ├── javascripts
        └── stylesheets

43 directories, 53 files
```






