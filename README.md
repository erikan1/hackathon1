# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# Ruby version:
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]

# Rails version:
Rails 5.2.1

# Built on:
Ubuntu 18.04 Bionic Beaver

# Configuration:

 ```  $ rails new projectname```
- [ ] gems used
  - [ ] bootstrap gem
  - [ ] devise gem for creating users
- [ ] controllers
- [ ] etc

# Database creation

 ```  $ rails g scaffold product sku:string name:string dept:string quantity:integer```
  - product = product id (figure out how to add: *must be unique*)
  - vendor = vendor name
  - dept = department
  - num = quantity in stock
  
  - create scaffold for list
  - create controllers for sessions
  - create controllers for items

# Database initialization

```   $ rake db:migrate #to migrate```

# How to run the test suite

# Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
