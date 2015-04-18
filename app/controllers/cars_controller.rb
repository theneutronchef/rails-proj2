class CarsController < ApplicationController

  def new
    @car = Car.new
    @trip = Trip.find(params[:trip_id])
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      # redirect_to trips_path(hashid: @trip.hashid)
    else
      render "new"
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:driver, :number_of_seats, :origin)
  end


end
