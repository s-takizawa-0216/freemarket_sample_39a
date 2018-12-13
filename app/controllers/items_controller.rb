class ItemsController < ApplicationController

  def index
    @items = Item.limit(8).order("created_at DESC")
  end

  def show
  end

  def new
    @item = Item.new
    4.times {@item.images.build}
    @item.build_shipping_method
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path

    else
      flash[:alert] = '※必須項目を入力してください'
      redirect_to new_item_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :detail, :condition, :size, :lcategory_id, :mcategory_id,:scategory_id, shipping_method_attributes: [:id, :burden_fee, :days_to_arrival, :prefecuture], images_attributes: [:id, :image])
  end

end
