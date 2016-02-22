class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
  end

  def edit
  end

  def update
    @post = Post.find(:id)
    @post.update_attributes(post_params)
  end

  def destroy
    @post = Post.find(:id)
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:content, :photo_url)
  end
end
