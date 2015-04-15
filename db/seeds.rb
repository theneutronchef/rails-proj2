# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gabriel = User.create(first_name: 'Gabriel', last_name: 'Tan', email_address: 'gabriel@groupool.com', is_driver: true)
japheth = User.create(first_name: 'Japheth', last_name: 'Wong', email_address: 'japheth@groupool.com', is_driver: true)
kelly = User.create(first_name: 'Kelly', last_name: 'Hong', email_address: 'kelly@groupool.com', is_driver: true)

car1 = Car.create(driver: 1, number_of_seats: 5, origin: 'Berkeley')
car2 = Car.create(driver: 2, number_of_seats: 5, origin: 'Emeryville')

trip1= Trip.create(name: 'RubyOnRails Trip', hashid: 'invalidhash', date: '2015-04-15', time: '05:30:00.000000', destination: 'San Francisco')

Relation.create(user: gabriel, car: car1, trip: trip1)
Relation.create(user: japheth, car: car2, trip: trip1)
Relation.create(user: kelly, car: car2, trip: trip1)