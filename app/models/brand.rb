class Brand < ApplicationRecord
  # アソシエーションの定義
  belongs_to :item
  has_many :large_caregories, through: :brands_categories
  has_many :medium_caregories, through: :brands_categories
  has_many :small_caregories, through: :brands_categories
  has_many :brands_categories
end
