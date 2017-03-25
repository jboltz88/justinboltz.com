class PostsController < ApplicationController
  def index
    @posts = Post.order(params[:date])
  end

  def show
    @post = Post.find(params[:id])
  end
end
