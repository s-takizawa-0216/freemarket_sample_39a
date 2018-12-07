class MercariesController < ApplicationController

  def index
    @items = Item.includes(:image).order("created_at DESC")
  end


end
