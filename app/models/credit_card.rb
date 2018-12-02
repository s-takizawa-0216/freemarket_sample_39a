class CreditCard < ApplicationRecord
  # アソシエーションの定義
  belongs_to :user
end
