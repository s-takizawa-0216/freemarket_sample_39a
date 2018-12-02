class Like < ApplicationRecord
  # アソシエーションの定義
  belongs_to :user
  belongs_to :item
end
