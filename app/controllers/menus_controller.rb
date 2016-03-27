class MenusController < ApplicationController

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(order_params)
    if @menu.save
      redirect_to menus_path
    else
      redirect_to root_path
    end
  end

  def show
    @menu
  end

  private

  def order_params
  params.require(:menu).permit(:name, :cuisine, :price)
  end
end
