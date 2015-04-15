class TripsController < ApplicationController

	def index
		@trip = Trip.find_by(hashid: params[:hashid])
		if not @trip
			redirect_to trips_error_path()
		end
	end

	def new
		@trip = Trip.new
	end

	def create
		@trip = Trip.new(trip_params)
		if @trip.save
			hashids = Hashids.new("since security is not very important, i'll just use this as my salt", 8)
			@trip.hashid = hashids.encode(@trip.id)
			@trip.save
			redirect_to trips_path(hashid: @trip.hashid)
		else
			render "new"
		end
	end

	def error

	end



	private

  def trip_params
    params.require(:trip).permit(:name, :date, :time, :destination)
  end

end
