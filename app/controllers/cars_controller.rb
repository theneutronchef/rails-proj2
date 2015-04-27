class CarsController < ApplicationController

  def new
    @car = Car.new
    @trip = Trip.find(params[:trip_id])
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @user = User.find_by(first_name: car_params()[:driver_first_name],
                         last_name: car_params()[:driver_last_name],
                         email: car_params()[:driver_email])
    if not @user
      @car = Car.new(car_params) 
      @relation = Relation.new
      if @car.save
        @driver = User.find_by(first_name: @car.driver_first_name, last_name: @car.driver_last_name)
        if not @driver 
          @user = User.new
          @user.first_name = @car.driver_first_name
          @user.last_name = @car.driver_last_name
          @user.email = @car.driver_email
          @user.save
          @driver = @user
        end
        @relation.trip_id = @trip.id
        @relation.car_id = @car.id
        @relation.user_id = @driver.id
        @car.driver = @driver.id
        @car.save
        @relation.save
        redirect_to trip_path(id: @trip.hashid)
      else
        render "new"
      end   
    else
      redirect_to trip_path(id: @trip.hashid)
    end
  end

  def show
    @car = Car.find(params[:id])
    # @passengers = Car.find()
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @car = Car.find(params[:id])
    @relations = Relation.where(car_id: @car.id)
    for relation in @relations
      relation.delete
    end
    @car.delete
    redirect_to trip_path(id: @trip.hashid)
  end


  private

  def car_params
    params.require(:car).permit(:driver_first_name, :driver_last_name, :driver_email, :number_of_seats, :origin, :depart_datetime)
  end


end
