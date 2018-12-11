class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
  end

  def create
    @item = Item.new(name: item_params[:name], price: item_params[:price], detail: item_params[:detail], condition: item_params[:condition])
    @item.save
  end

  def new
    @item = Item.new(name: item_params[:name], price: item_params[:price], detail: item_params[:detail], condition: item_params[:condition],size: item_params[:size])
    @item.save
  end

  private

  def item_params
    params.permit(:name, :price, :detail, :condition)
  end

end
