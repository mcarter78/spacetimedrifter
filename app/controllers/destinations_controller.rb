class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
    render :index
  end
  def show
    @destination = Destination.find(:id)
    render :show
  end
end
