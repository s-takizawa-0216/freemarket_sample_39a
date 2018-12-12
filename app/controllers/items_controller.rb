class ItemsController < ApplicationController

  def index
    @items = Item.order("created_at DESC")
    @ladies = Item.where(lcategory_id: '1').limit(4)
    @mens = Item.where(lcategory_id: '2').limit(4)
    @baby = Item.where(lcategory_id: '3').limit(4)
    @cosme = Item.where(lcategory_id: '6').limit(4)
    @chanel = Item.where(brand: 'シャネル').limit(4)
    @vuitton = Item.where(brand: 'ルイ ヴィトン').limit(4)
    @supreme = Item.where(brand: 'シュプリーム').limit(4)
    @nike = Item.where(brand: 'ナイキ').limit(4)
  end

  def show
  end

end
