class StaticPagesController < ApplicationController
  def home
    @feed_items = current_user.feed.paginate(page: params[:page], per_page: 10).search(params[:search])  if logged_in?
  end

  def about
  end
end
