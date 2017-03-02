class ProductController < ApplicationController
  before_action only: [:index,:addCart,:destroy]

  def index
    @product = Product.all
  end

  def addCart
  session[:product_id] = params[:product_id]
  @product = Product.find(params[:product_id])
  if session[:product_id].present?
    @temp = OrderTemp.new
    @temp.product_id = @product.id
    @temp.price = @product.price
    @temp.qty = 1
    @temp.save
  end
  @count = OrderTemp.count
  render json: @count
  end

  def checkout
    if session[:product_id].present?
      @temp = OrderTemp.all
     end
  end

  def destroy
    OrderTemp.delete_all
    session[:product_id] = nil
    redirect_to root_path
  end

  private

end
