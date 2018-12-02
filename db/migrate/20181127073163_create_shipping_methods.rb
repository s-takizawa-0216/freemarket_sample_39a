class CreateShippingMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_methods do |t|
      t.integer    :burden_fee,         null: false
      t.string     :shipping_methods,   null: false
      t.string     :days_to_arrival,    null: false
      t.string     :prefecuture,        null: false
      t.references :item,               null: false , foreign_key: true
      t.timestamps
    end
  end
end
