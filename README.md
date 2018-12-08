## usersテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,unique: true|
|image|string|null: false|

### Association
- has_one :users_details, dependent: :destroy
- has_many :items, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_one :credit_card, dependent: :destroy
- has_many :evaluations, dependent: :destroy

## usersdetailsテーブル
|column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, unique: true|
|first_name|string|null: false|
|family_name|string|null: false|
|kana_first|string|null: false|
|kana_family|string|null: false|
|postal_code|integer(7)|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|addless|string|null: false|
|building_name|string|------|
|phone_num|integer|null: false,|
|profile|text|------|

### Association
- belongs_to :user, optional: true, dependent: :destroy, foreign_key: "user_id"


## itemsテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index|
|price|integer|null: false|
|detail|text|null: false|
|condition|string|null: false|
|size|string|null :false|
|brand|text|
|scategory|reference|null: false, foreign_key: true|
|mcategory|reference|null: false, foreign_key: true|
|lcategory|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :lcategory
- belongs_to :mcategory
- belongs_to :scategory
- belongs_to :saler, class_name: "User"
- belongs_to :buyer, class_name: "User"
- has_one :shipping
- has_one :size
- has_many :likes

### Association
- belongs_to :item
- has_many :lcaregories
- has_many :mcaregories
- has_many :scaregories

## lcategoriesテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index|

### Association
- has_many :items

## mcategoriesテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index|

### Association
- has_many :items

## scategoriesテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index|

### Association
- has_many :items

## likesテーブル
|column|Type|Options|
|------|----|-------|
|user_id|reference|null: false|
|item_id|reference|null: false|

### Association
- belongs_to :user
- belongs_to :item

## evaluationsテーブル
|column|Type|Options|
|------|----|-------|
|evaluation|string|null: false|
|comment|text|null: false|
|saler_id|reference|null :false|
|buyer_id|reference|null :false|

### Association
- belongs_to user

## commentsテーブル
|column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|reference|null: false, foreign_key: true|
|item_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

## shippingテーブル
|column|Type|Options|
|------|----|-------|
|burden_fee|integer|null: false|
|shipping_methods|string|null: false|
|days_to_arrival|string|null: false|
|item_id|reference|null: false, foreign_key: true|
|prefecture|string|null: false|

### Association
- belongs_to :item

## creditcardテーブル
|column|Type|Options|
|------|----|-------|
|credit_number|integer|null: false|
|security_cord|integer|null: false|
|year|integer|null: false|
|month|integer|null: false|
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
