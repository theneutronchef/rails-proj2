class HomeController < ApplicationController

  def index
      
  end

  def search
    redirect_to trips_path(hashid: params["SearchInput"]) 
  end

end
