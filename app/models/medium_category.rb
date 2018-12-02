class MediumCategory < ApplicationRecord
  # アソシエーションの定義
  has_many :items
  has_many :brands, through: :brands_categories
  has_many :brands_categories
end
