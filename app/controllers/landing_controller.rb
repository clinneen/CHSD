class LandingController < ApplicationController
  #root
  def index
  end

  #/login
  def login
    @username=params[:first_name].to_s
    @password=params[:this].to_s

    if @username=='clinneen' and @password=='test'
      redirect_to home_path, notice: 'Welcome Cammeron'
    else
      redirect_to '/'
    end
  end
end
