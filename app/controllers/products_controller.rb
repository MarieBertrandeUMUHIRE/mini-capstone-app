class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new

  end

  def create
    name = params[:name]
    price = params[:price]
    image = params[:image]
    description = params[:description]
    product = Product.new({name: name, price: price, image: image, description: description })
    product.save
    flash[:success] = "Product created"
    redirect_to "/products/#{product.id}"
  end   


  def edit
  @product = Product.find_by(id: params[:id])
  end

  def update
  product = Product.find_by(id: params[:id])
  product.name = params[:name]
  product.price = params[:price]
  product.image = params[:image]
  product.description = params[:description]
  product.save
  flash[:success] = "Product updated"
  redirect_to "/products/#{product.id}"
  end

  def destroy
 @product = Product.find_by(id: params[:id])
 @product.destroy
 flash[:danger] = "Product deleted"
 redirect_to "/products"

  end
end
