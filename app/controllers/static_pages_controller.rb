class StaticPagesController < ApplicationController
  def home
    redirect_to posts_url if user_signed_in?
  end

  def about
  end
end
