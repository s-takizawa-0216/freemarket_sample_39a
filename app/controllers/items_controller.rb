class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
    @item.build_shipping_method
  end

  def create
    @item = Item.new(item_params)
    @item.save!
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :detail, :condition, :size, :lcategory_id, :mcategory_id,:scategory_id, shipping_method_attributes: [:id, :burden_fee, :days_to_arrival, :prefecuture])
  end

end
