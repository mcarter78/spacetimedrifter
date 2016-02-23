class PostsController < ApplicationController
  before_action :logged_in?

  def new
    @destination = Destination.find(params[:id])
    @user = current_user
    @post = Post.new
    render :new
  end

  def create
    @destination = Destination.find(params[:id])
    @user = current_user
    @post = Post.create(post_params)
    redirect_to @destination
  end

  def edit
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:content, :photo_url, :destination_id, :user_id)
  end
end
