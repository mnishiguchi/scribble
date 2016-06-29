class CommentsController < ApplicationController
  before_action :authenticate_user! # all actions

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params.merge(post: @post))
    if @comment.save
      flash[:info] = "A commnet created"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:info] = "A comment updated"
      redirect_to @comment.post
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:info] = "A comment deleted"
    redirect_to @comment.post
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :post_id)
    end
end
