class MenusController < ApplicationController

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(order_params)
    @menu.save
      redirect_to menu_path(@menu)
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    @menu.update(order_params)
    redirect_to menus_path
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    # redirect_to root_path
  end

  private

  def order_params
  params.require(:menu).permit(:name, :cuisine, :price)
  end
end
