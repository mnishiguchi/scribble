class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
    else
      @posts = Post.all
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  # Handles submission from the add post form in the index page.
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:info] = "A post created"
    end

    redirect_to posts_path
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
      params.require(:post).permit(:title, :content, :all_tags)
    end
end
