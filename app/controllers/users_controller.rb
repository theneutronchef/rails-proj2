class UsersController < ApplicationController

  def new
    @user = User.new
    flash[:car_id] = params[:car_id]
    flash[:trip_id] = params[:trip_id]
  end

  def create
    @user = User.find_by(first_name: user_params()[:first_name],
                         last_name: user_params()[:last_name],
                         email: user_params()[:email])
    if not @user
      @user = User.new(user_params)
    end

    if @user.save
      @relation = Relation.find_by(user_id: @user.id,  
                                   trip_id: flash[:trip_id])
      if not @relation
        @relation = Relation.new
        @relation.car_id = flash[:car_id]
        @relation.trip_id = flash[:trip_id]
        @relation.user_id = @user.id
        @relation.save
      end
      @trip = Trip.find_by(id: flash[:trip_id])
      redirect_to trip_path(id: @trip.hashid)
    else
      render "new"
    end
  end

  def destroy
    @relation = Relation.find_by(user_id: params[:user_id],  
                                 car_id: params[:car_id],
                                 trip_id: params[:trip_id])
    @relation.delete
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end

end
