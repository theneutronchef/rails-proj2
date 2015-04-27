# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gabriel = User.create(first_name: 'Gabriel', last_name: 'Tan', email: 'gabriel@groupool.com')
japheth = User.create(first_name: 'Japheth', last_name: 'Wong', email: 'japheth@groupool.com')
kelly = User.create(first_name: 'Kelly', last_name: 'Hong', email: 'kelly@groupool.com')
sam = User.create(first_name: 'Sam', last_name: 'Lau', email: 'sam@blueprint.com')
erica = User.create(first_name: 'Erica', last_name: 'Yin', email: 'erica@blueprint.com')
mark = User.create(first_name: 'Mark', last_name: 'Miyashita', email: 'mark@blueprint.com')
charles = User.create(first_name: 'Charles', last_name: 'Xue', email: 'charles@blueprint.com')
alice = User.create(first_name: 'Alice', last_name: 'Oh', email: 'alice@blueprint.com')
matt = User.create(first_name: 'Matthew', last_name: 'Sanders', email: 'matthew.sanders@some_email.com')

car1 = Car.create(driver: gabriel.id, number_of_seats: 5, origin: 'Berkeley', depart_datetime: '2015-04-15 05:00:00.000000')
car2 = Car.create(driver: japheth.id, number_of_seats: 5, origin: 'Emeryville', depart_datetime: '2015-04-15 05:05:00.000000')
car3 = Car.create(driver: matt.id, number_of_seats: 4, origin: 'Berkeley', depart_datetime: '2015-04-15 04:55:00.000000')

trip1= Trip.create(name: 'RubyOnRails Trip', hashid: 'rubyonrails', datetime: '2015-04-15 05:30:00.000000', destination: 'San Francisco')

Relation.create(user: gabriel, car: car1, trip: trip1)
Relation.create(user: japheth, car: car2, trip: trip1)
Relation.create(user: kelly, car: car2, trip: trip1)
Relation.create(user: sam, car: car1, trip: trip1)
Relation.create(user: erica, car: car1, trip: trip1)
Relation.create(user: alice, car: car3, trip: trip1)
Relation.create(user: charles, car: car3, trip: trip1)
Relation.create(user: mark, car: car3, trip: trip1)
Relation.create(user: matt, car: car3, trip: trip1)
