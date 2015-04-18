class TripsController < ApplicationController

  def show
    @trip = Trip.find_by(hashid: params[:id])
    if not @trip
      redirect_to trips_error_path()
    end

    @cars = @trip.cars.uniq
  end

  def new
    @trip = Trip.new
  end

  def edit
    @trip = Trip.find_by(hashid: params[:id])
  end

  def update
    @trip = Trip.find_by(hashid: params[:id])
    if @trip.update(trip_params)
      redirect_to @trip
    else
      render "edit"
    end
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      hashids = Hashids.new("since security is not very important, i'll just use this as my salt", 8)
      @trip.hashid = hashids.encode(@trip.id)
      @trip.save
      redirect_to trip_path(id: @trip.hashid)
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
