# GROUPool
[Demo Link](http://www.google.com)

## Team Members
- Kelly Hong
- Gabriel Tan
- Japheth Wong

## Idea 

An application to coordinate carpools for trips. Users can create trips, share the trip with friends and have other users add cars to the trip OR join an existing car in the trip

## Models and Description

####User
- has name, email
- belongs to cars (can belong to multiple cars from different trips, but only one car per trip)

####Car
- has driver(user), passengers(users), number of seats, origin, datetime of departure
- belongs to only one trip 

####Trip
- has name, cars, destination, datetime of event, comments, hash

####Relation
- has User, Car, Trip
- maintains relationships between all 3 models


## Features
- Any user can create a trip
- Any user can create a car, but he/she has to be the driver
- Any user can join a car
- No login feature, but users are identified by their name and email (e.g. to delete oneself from a trip, you need to submit your email, which is a unique identifier)

## Division of Labor
Kelly: In charge of frontend
Gabriel: Created basic views, models, and controllers
Japheth: Backend logic for Trip Dashboard