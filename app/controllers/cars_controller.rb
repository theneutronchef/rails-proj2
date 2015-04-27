class CarsController < ApplicationController

  def new
    @car = Car.new
    @trip = Trip.find(params[:trip_id])
  end

  def create
    p = params
    @trip = Trip.find(p[:trip_id])
    @user = User.find_by(first_name: p[:driver_first_name],
                         last_name: p[:driver_last_name],
                         email: p[:driver_email])
    if not @user
      @user = User.new
      @user.first_name = p[:driver_first_name]
      @user.last_name = p[:driver_last_name]
      @user.email = p[:driver_email]
      @user.save
      @driver = @user
    end

    @relation = Relation.find_by(trip_id: @trip.id, user_id: @user.id)
    if not @relation
      @car = Car.new(car_params) 
      @relation = Relation.new
      if @car.save
        @driver = User.find_by(first_name: p[:driver_first_name], 
                               last_name: p[:driver_last_name])
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

  def delete
    flash[:trip_id] = params[:trip_id]
    flash[:car_id] = params[:car_id]
  end

  def destroy
    @trip = Trip.find(flash[:trip_id])
    @car = Car.find(flash[:car_id])
    @relations = Relation.where(car_id: flash[:car_id])
    @driver = User.find(@car.driver)
    if params[:email] == @driver.email
      for relation in @relations
        relation.delete
      end
      @car.delete
      redirect_to trip_path(id: @trip.hashid)
    else
      redirect_to car_delete_path(:trip_id => flash[:trip_id], 
                                  :car_id => flash[:car_id], 
                                  :warning => false, 
                                  :first_name => @driver.first_name, 
                                  :last_name => @driver.last_name)
    end
  end


  private

  def car_params
    params.require(:car).permit(:driver_first_name, :driver_last_name, :driver_email, :number_of_seats, :origin, :depart_datetime)
  end


end
