# _The Most Amazing E-Commerce Site_

#### _This is a Ruby on Rails E-Commerce Application that includes login functionality and a shopping cart.  July 14, 2017_

#### By _**Asia Kane**_

<!-- ![Homepage](./app/assets/images/homepage-ss.png) -->

## Description

This is an E-Commerce application is for both customers (users) and store managers (admins).  It includes `bcrypt` and `materialize`.

Users can:
- Create an account
- Login/Logout of their account
- View all products on one page
- Add items to their shopping cart
- Visit their shopping cart to view total price and/or remove items from their cart

Admins can:
-
-
* Note: There is one admin seeded in the database.  An admin can only be added by seeding the database to prevent any user from accessing admin functionality.  To access the admin account, login using:

Email: "admin@admin.com"
Password: "password123456"

The application structure is outlined below.  

Models:
  - Users
  - Products
  - Orders
  - Order Items

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)

## Installation

In your terminal:
* `git clone https://github.com/akane0915/went-to-bali-mwahaha`
* `cd went-to-bali-mwahaha`
* `bundle install`
* Open another terminal window and type `postgres`.  Leave this window open.
* In your first terminal window type:
* `bundle exec rake db:setup`
* `bundle exec rake db:test:prepare`

## Development server

Run `bundle exec rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

* If you would like to make changes to this project, do so in a text editor.
* Make frequent commits with detailed comments.
* Submit changes as pull request to Asia at akane0915 on Github.

## Running tests

<!-- This app includes unit and integration testing using RSpec, Factory girl, Shouldamatchers, and Capybara for testing.
Run `bundle exec rspec` in terminal to test. -->

## Technologies Used

* Ruby
* Rails
* ActiveRecord
* Postgres
* Bundler
* Rake Gem
* Bcrypt Gem
<!-- * Rspec -->
* HTML
* CSS
* Bootstrap
* ES6

## Known Bugs
_N/A_

#### Screen Shots

<!-- About Section
![Aboutpage](./app/assets/images/about-ss.png)

Products Section
![Products](./app/assets/images/product-ss.png)

Product Detail Section
![Product Details](./app/assets/images/product-detail.png)

New Product Section (only accessible by admins)
![New Product](./app/assets/images/new-product-ss.png)

New Review Section (only accessible by authenticated user)
![New Review](./app/assets/images/new-review-ss.png) -->

## Support and contact details
_I encourage you to update/make suggestions/refactor this code as you see fit. I am always open to improvement! Please contact Asia Kane at asialkane@gmail.com with questions._

### License
*This software is licensed under the MIT license*
Copyright © 2017 **Asia Kane**
