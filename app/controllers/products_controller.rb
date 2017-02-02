 class ProductsController < ApplicationController

  def index

    if params[:price]
      @products = Product.all.order(price: params[:price])

    elsif params[:discount]
      @products = Product.where("price < ?",165)
    else
      @products = Product.all
    end

  end

  def show
    if params[:id] == "random"
      @product = Product.all.sample

    else
    @product = Product.find_by(id: params[:id])

    end
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
