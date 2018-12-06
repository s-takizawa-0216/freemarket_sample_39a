class MercariesController < ApplicationController

  def index
    @items = Item.order("created_at DESC")
  end

end
