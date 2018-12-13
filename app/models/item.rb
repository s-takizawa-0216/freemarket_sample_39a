class Item < ApplicationRecord
  # アソシエーションの定義
  belongs_to :lcategory
  belongs_to :mcategory
  belongs_to :scategory
　#buyerなどのアソシエーションは一旦削除してます
  has_one :shipping_method
  accepts_nested_attributes_for :shipping_method
  # has_many :likes
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images

  validates :name, presence:true
  validates :detail, presence:true
end
