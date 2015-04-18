class HomeController < ApplicationController

  def index
      
  end

  def search
    redirect_to trip_path(id: params["SearchInput"]) 
  end

end
