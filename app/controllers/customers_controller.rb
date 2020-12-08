class CustomersController < ApplicationController

  def mypage
    @customer = Customer.find(params[:id])
  end

  def show
    @customer = Customer.find(params[:id])
    @post = @customer.posts
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customer_path(@customer)
    end
  end

  def index
    @customers = Customer.all
  end

  def unsubscribe
    @customer = Customer.find(params[:id])
    if request.patch?
      @customer.update(is_deleted: true)
      reset_session
      redirect_to thanks_customer_path
    end
  end

  def thanks
  end

  def customer_params
    params.require(:customer).permit(
      :last_name, :first_name, :last_name_kana, :first_name_kana, :handle_name, :email, :is_deleted, :profile_image)
  end

end
