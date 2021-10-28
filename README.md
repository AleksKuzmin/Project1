# Nomad Art Group Website

This is an app for connecting yoga teachers and students named "Yoga4". User student can visit the website, check available classes and classes's location, and make as many bookings as they like. User instructor can create, edit and delete classes.
User can sign in and sign out. An admin can see all users and remove them if needed it

## About this project
This app is made with Ruby on Rails using different models and associations.

## Future works on this project.
* Making pages for users so they can make comment about classes and make notes about their development.
* Include online classes and chats.


## Link to the app

#### [https://projectyoga4.herokuapp.com

## Models

### User Model
* Login/Create account option
* Every user can make as many bookings as they like
* User instructor can create classes

### Booking Model
* Bookings belong to classes

### Lesson Model
* Each class shows information, images, description, location on the map

### Location Model
* This model has many classes and shows location based on suburb and postcode


## Layout

### Home page
* User sign up and choose if they are instructors or sign in. They can check their home page and check available classes and make a booking, edit their profile.
* A nav bar  navigates to "home page" and "your stuff"
By signing in, they can their own page and logout.
* For admin, there is one more option in the nav bar.

* There is a footer that has links to facebook, instagram, youtube pages.


## Techs and libraries
* Ruby on Rails
* Bootstrap
* bcrypt
