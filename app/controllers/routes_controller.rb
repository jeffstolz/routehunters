class RoutesController < ApplicationController

  def index
    @routes = Route.all
  end

  def new
  	@route = Route.new
  end

  def create
    Route.create(route_params)
    redirect_to root_path
  end

  private

  def route_params
    params.require(:route).permit(:name, :locations, :length, :description)
  end

end
