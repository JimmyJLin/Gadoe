class TablesController < ApplicationController

  def new
    @table = Table.new
  end

  def create
    @table = Table.new(table_params)
    @table.save
    redirect_to tables_path(@table)
  end

  def show
    @table = Table.find(params[:id])
  end

  def edit
    @table = Table.find(params[:id])
  end

  def update
    @table = Table.find(params[:id])
    @table.update(table_params)
    redirect_to tables_path
  end

  def destroy
    @table = Table.find(params[:id])
    @table.destroy
  end

  private

  def table_params
    params.require(:table).permit(:table_num, :guests, :paid)
  end


end
