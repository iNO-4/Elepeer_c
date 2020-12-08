class PostsController < ApplicationController

  def index
  	@posts = Post.all
  end

  def all
  	@posts = Post.where(customer_id: params[:customer_id])
    @customer = Customer.find(params[:customer_id])
  end

  def ranking
    @posts = Post.joins(:favorites).group("favorites.post_id").order("count(favorites.id) desc").limit(10)
  	#@posts = Post.all.sort {|a,b| b.favorited_customers.count <=> a.favorited_customers.count}.slice(0,10)
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = current_customer.posts.new(post_params)
  	@post.rate = 0 if @post.rate.blank? #後置if
  	if @post.save
  		redirect_to post_path(@post)
  	else
  		render 'new'
  	end
  end

  def show
  	@post = Post.find(params[:id])
  	@customer = Customer.find_by(id: @post.customer_id)
    @post_comment = PostComment.new
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	if @post.update(post_params)
  		redirect_to post_path(@post)
  	end
  end

  def destroy
  	@post = Post.find(params[:id])
    @post.destroy
    redirect_to mypage_customer_path(current_customer)
  end

  private
  def post_params
  	params.require(:post).permit(
  		:title, :body, :product_name, :bay_day, :price, :product_image, :rate)
  end
end
