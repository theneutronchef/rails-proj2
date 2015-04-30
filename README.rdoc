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
- has name, email, relations
- through relations, belongs to cars (can belong to multiple cars from different trips, but only one car per trip)

####Car
- has 1 driver(user), passengers(users), number of seats, origin, datetime of departure, relations
- through relations, belongs to a single trip 

####Trip
- has name, cars, destination, datetime of event, comments, hash, relations

####Relation*
- belongs to Users, Cars, Trips
- maintains relationships between all 3 models

## Features
- Any user can create a trip
- Trips are identified and shared by a unique hash
- Any user can create a car, but he/she has to be the driver
- Any user can join a car if he/she is not already a driver OR is not already in another car
- No login feature, but users are identified by their name and email (e.g. to delete oneself from a trip, you need to submit your email, which is a unique identifier)

## Division of Labor
- Kelly: Pretty much all of frontend 
- Gabriel: Created basic views, models, controllers, and routes
- Japheth: Backend logic for Trip Dashboard, seed file