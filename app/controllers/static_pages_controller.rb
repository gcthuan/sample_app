class StaticPagesController < ApplicationController

  def home
  	if current_user.nil?
  	  
  	else
  	  @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
	end
  end

  def help
  end

  def about
  end
end
