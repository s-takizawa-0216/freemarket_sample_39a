require 'carrierwave'
require 'carrierwave/orm/activerecord'
class Image < ApplicationRecord
  belongs_to :item
  mount_uploader :images, ImageUploader
end
