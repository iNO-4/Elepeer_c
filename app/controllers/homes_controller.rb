class HomesController < ApplicationController

  def top
  	@posts = Post.order(created_at: :desc).limit(10)
  end

  def about
  end

  def author
  end

end
