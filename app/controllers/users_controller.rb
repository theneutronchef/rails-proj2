class UsersController < ApplicationController

  def new
    @user = User.new
    flash[:car_id] = params[:car_id]
    flash[:trip_id] = params[:trip_id]
  end

  def create
    @user = User.new(user_params)

    if @user.save
      @relation = Relation.new
      @relation.car_id = flash[:car_id]
      @relation.trip_id = flash[:trip_id]
      @relation.user_id = @user.id
      @relation.save
      @trip = Trip.find_by(id: flash[:trip_id])
      redirect_to trip_path(id: @trip.hashid)
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end

end
