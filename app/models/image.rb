require 'carrierwave'
require 'carrierwave/orm/activerecord'
class Image < ApplicationRecord
  #出品機能に必要な記述（とりあえずcarrierwave使ってます）
  belongs_to :item
  mount_uploader :image, ImageUploader
end
