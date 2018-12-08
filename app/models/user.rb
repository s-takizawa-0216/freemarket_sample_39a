class User < ApplicationRecord
   # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

# グーグルログインの実装部分
   def self.find_for_google_oauth2(auth)
    user = User.where(email: auth.info.email).first

    unless user
      user = User.create(name:     auth.info.name,
                         provider: auth.provider,
                         uid:      auth.uid,
                         email:    auth.info.email,
                         token:    auth.credentials.token,
                         password: Devise.friendly_token[0, 20])
    end
    user
  end

# facebookログインの実装部分
 def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name:auth.extra.raw_info.name,
                          provider:auth.provider,
                          uid:auth.uid,
                          email:auth.info.email,
                          password:Devise.friendly_token[0,20])
    end
    user
  end

# アソシエーションの定義
  has_one :users_details, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_one :credit_card, dependent: :destroy
  has_many :evaluations, dependent: :destroy

# バリデーションの定義
  validates :name, presence: true , uniqueness: true   #空でない事、nameが重複しない事
  validates :encrypted_password, length: { minimum: 6 }  #パスワードが6文字以上である事
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
end

