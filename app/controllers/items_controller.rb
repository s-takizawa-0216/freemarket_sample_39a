class ItemsController < ApplicationController

  def index
<<<<<<< HEAD
    @items = Item.all
=======
    @items = Item.order("created_at DESC")
>>>>>>> yuuki999/master
  end

  def show
  end

  def create
    @item = Item.new(name: item_params[:name],price: item_params[:price], detail: item_params[:detail],condition: item_params[:condition])
    @item.save
  end

  def new
    @item = Item.new
  end

  private

  def item_params
    params.permit(:name, :price, :detail, :condition)
  end

end
