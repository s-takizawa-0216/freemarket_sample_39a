class UsersDetail < ApplicationRecord
  # アソシエーションの定義
  belongs_to :user, optional: true, dependent: :destroy, foreign_key: "user_id"

# バリデーションの定義
  validates :first_name, presence: true
  validates :famiry_name, presence: true
  validates :kana_first, presence: true
  validates :kana_family, presence: true
  validates :postal_code, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :addres, presence: true
  validates :phone_num ,presence: true ,uniqueness: true
end
