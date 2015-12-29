class V1::PostsController < ApplicationController
  def index
    @posts = Post.all.page(params[:page])
    render json: @posts
  end

  def show
    @post = Post.find_by_id(params[:id])
    render json: @post
  end

  def create
  end

  def destroy
  end
end
