class ItemsController < ApplicationController

  def index
    @items = Item.order("created_at DESC")
    @ladies = @items.where(lcategory_id: '1').limit(4)
    @mens = @items.where(lcategory_id: '2').limit(4)
    @baby = @items.where(lcategory_id: '3').limit(4)
    @cosme = @items.where(lcategory_id: '6').limit(4)
    @chanel = @items.where(brand: 'シャネル').limit(4)
    @vuitton = @items.where(brand: 'ルイ ヴィトン').limit(4)
    @supreme = @items.where(brand: 'シュプリーム').limit(4)
    @nike = @items.where(brand: 'ナイキ').limit(4)
  end

  def show
  end

  def payment
    Payjp.api_key = 'sk_test_400205e7ce6cabc8a6ab9232'
    charge = Payjp::Charge.create(
    :amount => 3500,
    :card => params['payjp-token'],
    :currency => 'jpy',
    )
  end

end
