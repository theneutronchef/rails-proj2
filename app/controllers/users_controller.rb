class UsersController < ApplicationController

  def new
    @user = User.new
    @trip = Trip.find_by(id: params[:trip_id])
    flash[:car_id] = params[:car_id]
    flash[:trip_id] = params[:trip_id]

  end

  def create
    @user = User.find_by(first_name: user_params()[:first_name],
                         last_name: user_params()[:last_name],
                         email: user_params()[:email])
    if not @user
      @user2 = User.find_by(email: user_params()[:email])
      if not @user2
        @user = User.new(user_params)
      else
        redirect_to new_user_path(:car_id => flash[:car_id],
                                     :trip_id => flash[:trip_id],
                                     :warning => true)
        return
      end
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

  def delete
    @trip = Trip.find(params[:trip_id])
    flash[:car_id] = params[:car_id]
    flash[:trip_id] = params[:trip_id]
    flash[:user_id] = params[:user_id]
  end

  def destroy
    @relation = Relation.find_by(user_id: flash[:user_id],  
                                 car_id: flash[:car_id],
                                 trip_id: flash[:trip_id])
    @user = User.find(flash[:user_id])
    if params[:email] == @user.email
      @relation.delete
      @trip = Trip.find(flash[:trip_id])
      redirect_to trip_path(id: @trip.hashid)
    else
      redirect_to user_delete_path(:car_id => flash[:car_id],
                                   :user_id => flash[:user_id],
                                   :trip_id => flash[:trip_id],
                                   :warning => true, 
                                   :first_name => @user.first_name,
                                   :last_name => @user.last_name)
    end

    
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end

end
