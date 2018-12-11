class Item < ApplicationRecord
  # アソシエーションの定義
  # belongs_to :user
  belongs_to :lcategory
  belongs_to :mcategory
  belongs_to :scategory
  belongs_to :saler, class_name: "User"
  # belongs_to :buyer, class_name: "User"
  # has_many :brands
  # has_one :shipping_method
  # has_many :likes
  # has_many :images
end
