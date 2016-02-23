class UsersController < ApplicationController
  before_action :logged_in?, except: [:new, :create]

  def index
    @current_user = current_user
    @users = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    user = User.create!(user_params)
    login user
    redirect_to user
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.all
    render :show
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    user = User.find(params[:id])
    user.update_attributes!(user_params)
    redirect_to user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :about_me, :avatar_url)
  end
end
