# README

This is a Private Events web application using the Ruby on Rails framework. It is a practice exercise in modeling has_many :through associations. Users can create events. A user can attend many events. An event can be attended by many users. 

In its current version, only a name is required to sign up, and only a name and date are required to create an event. But an event can only be created by a signed-in user. Events are displayed by their date to show those that are upcoming and those that have already past. Signed-in users can choose to attend already created events, but only if they are upcoming.

It has been deployed to Heroku and can be found here https://pure-sierra-24487.herokuapp.com/

### Acknowledgments

Instructions for this project can be found here https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations?ref=lnav
