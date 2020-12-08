class BookmarksController < ApplicationController

  def index
  	#@customer = current_customer
  	#@bookmarks = Bookmark.where(customer_id: current_customer.id)
  	@bookmarks = Bookmark.where(customer_id: current_customer.id)
  	#@posts = Post.where(id: bookmarks)
  end

  def create
  	bookmark = current_customer.bookmarks.build(post_id: params[:post_id])
  	bookmark.customer_id = current_customer.id
    bookmark.save!
    redirect_to bookmarks_path
  end

  def destroy
  	current_customer.bookmarks.find_by(id: params[:id]).destroy!
    redirect_to bookmarks_path
  end
end
