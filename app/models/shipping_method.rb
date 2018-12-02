class ShippingMethod < ApplicationRecord
  # アソシエーションの定義
  belongs_to :item
end
