class Item < ApplicationRecord
  # アソシエーションの定義
  belongs_to :user
  belongs_to :large_caregory
  belongs_to :medium_category
  belongs_to :small_category
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User"
  has_many :brands
  has_one :shipping_method
  has_one :size
  has_many :likes
  has_many :images
end
