class DestinationsController < ApplicationController
  before_action :logged_in?

  def index

    @destinations = Destination.all
    render :index
  end
  def show
    @destination = Destination.find(params[:id])
    @posts = Post.all
    render :show
  end
end
