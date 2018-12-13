class ItemsController < ApplicationController

  def index
    @items = Item.order("created_at DESC")
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
