class PostsController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    # Create a post in memory based on the params.
    @post = Post.new(post_params)

    # Then, try to save.
    if @post.save
      flash[:info] = "Post created"
      redirect_to @post
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:info] = "Post updated"
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:info] = "Post deleted"
    redirect_to root_url
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
