class CartedProductsController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity].to_i
    subtotal = quantity * product.price
    tax = quantity * product.tax
    total = subtotal + tax
    carted_product = Carted_product.new(quantity: quantity, user_id: current_user.id, product_id: product.id, subtotal: subtotal, tax: tax, total: total)
    if carted_product.save
      flash[:success] = "Successfully added the product to Cart "
      redirect_to "/carted_product/#{carted_product.id}"
    else
      flash[:danger] = "Fail to add the product to cart"
      redirect_to "/products/#{product.id}"
    end
    Order.where("user_id=? AND complete=?,current_user.id,false")
  end

  def show
    @user = Order.find_by(id: params[:id]) 
end
