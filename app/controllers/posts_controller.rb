class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = current_user.posts.build
  end

  def create
    # Create a post in memory based on the params.
    @post = current_user.posts.build(post_params)

    # Then, try to save.
    if @post.save
      flash[:info] = "Post created"
      redirect_to root_url
    else
      render 'static_pages/home'
      # render :new
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
