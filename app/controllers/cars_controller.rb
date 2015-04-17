class CarsController < ApplicationController

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      # redirect_to trips_path(hashid: @trip.hashid)
    else
      render "new"
    end
  end



  private

  def car_params
    params.require(:car).permit(:driver, :number_of_seats, :origin)
  end


end
