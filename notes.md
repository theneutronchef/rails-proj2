# Rails Project 2


## Models

	** User ** 

		first_name - string
		last_name - string
		email_address - string
		is_driver - boolean (optional, default false)
		has_many :relations

	** Car ** 

		driver - integer
		number_of_seats - integer 
		origin - string
		has_many :relations

	** Trip ** 

		name - string 
		hashid - string
		date - date
		time - time
		destination - string
		comments - text (optional)
		has_many :relations

	** Relation **

		user - references
		car - references
		trip - references


## Controllers

	** Home **

	** Users **

	** Cars **

	** Trips **


## Flow

	** HomePage **
		
		Create Trip -> NewTrip
		Search for Trip (using hash) -> Dashboard or ErrorPage

	** NewTrip **

	  Form 
	  Submit -> Dashboard

	** Dashboard **
	e.g. http://localhost:3000/trips?hashid=Lg2Qa2Bn

		Add Car  -> NewCar + Login
		Choose Car -> Login
		View Car -> CarInfo
		Share Link (FB,G+,Twitter etc)

	** ErrorPage **

		Return to Home -> HomePage

