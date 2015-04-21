# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gabriel = User.create(first_name: 'Gabriel', last_name: 'Tan', email: 'gabriel@groupool.com', is_driver: true, encrypted_password: '#$taawktljasktlw4aaglj', password: 'password', password_confirmation: 'password')
japheth = User.create(first_name: 'Japheth', last_name: 'Wong', email: 'japheth@groupool.com', is_driver: true, encrypted_password: '#$taawktljasktlw4aaglj', password: 'password', password_confirmation: 'password')
kelly = User.create(first_name: 'Kelly', last_name: 'Hong', email: 'kelly@groupool.com', is_driver: true, encrypted_password: '#$taawktljasktlw4aaglj', password: 'password', password_confirmation: 'password')

car1 = Car.create(driver: 1, number_of_seats: 5, origin: 'Berkeley')
car2 = Car.create(driver: 2, number_of_seats: 5, origin: 'Emeryville')

trip1= Trip.create(name: 'RubyOnRails Trip', hashid: 'invalidhash', datetime: '2015-04-15 05:30:00.000000', destination: 'San Francisco')

Relation.create(user: gabriel, car: car1, trip: trip1)
Relation.create(user: japheth, car: car2, trip: trip1)
Relation.create(user: kelly, car: car2, trip: trip1)