class CreateUsersDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :users_details do |t|
      t.references  :user,          null: false , foreign_key: true
      t.string      :first_name,    null: false
      t.string      :famiry_name,   null: false
      t.string      :kana_first,    null: false
      t.string      :kana_family,   null: false
      t.integer     :postal_code,   null: false
      t.string      :prefecture,    null: false
      t.string      :city,          null: false
      t.string      :addres,        null: false
      t.string      :building_name
      t.integer     :phone_num
      t.text        :profile
      t.timestamps
    end
  end
end
