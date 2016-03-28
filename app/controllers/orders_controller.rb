class OrdersController < ApplicationController

def index
  @tables = Table.all
end

def new
  @menu = Menu.all
  @order = Order.new
end

def create
  @order = Order.new(order_params)
  @order.save
  redirect_to order_path(@order)
end

def show
  @order = Order.find(params[:id])
  @orders = Order.all
  @menu = Menu.all
  @tables = Table.all
end

def edit
  @order = Order.find(params[:id])
end

def update
  @order = Order.find(params[:id])
  @order.update(order_params)
  redirect_to orders_path
end

def destroy
  @order = Order.find(params[:id])
  @order.destroy
end

private

def order_params
  params.require(:order).permit(:table_id, :menu_id)
end

end
