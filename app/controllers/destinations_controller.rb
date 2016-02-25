class DestinationsController < ApplicationController
  before_action :logged_in?

  def index
    @destinations = Destination.all
    @destinations_sorted = @destinations.sort_by { |dest| dest.posts.count }
    @dests = @destinations_sorted.reverse!
    render :index
  end
  def show
    @destination = Destination.find(params[:id])
    @posts = Post.all
    render :show
  end
end
