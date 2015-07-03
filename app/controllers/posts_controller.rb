class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.create
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post = Post.create(post_params)
    redirect_to(posts_path(@posts))
  end

  def show
    @post = Post.find(params[:id])
  end

  private
    def post_params
      params.require(:post).permit(:image, :caption)
    end

end
