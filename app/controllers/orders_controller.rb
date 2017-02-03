class OrdersController < ApplicationController
  def new
    render 'new.html.erb'
  end
  def create
    order = Order.new(
    quantity: params[:quantity])
    flash[:success] = 'The quantity recorded'
    redirect_to '/results'
  end
end