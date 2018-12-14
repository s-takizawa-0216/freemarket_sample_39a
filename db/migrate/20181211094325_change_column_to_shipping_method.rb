class ChangeColumnToShippingMethod < ActiveRecord::Migration[5.2]
 def up
    change_column :shipping_methods, :days_to_arrival, :string, null: false
    change_column :shipping_methods, :prefecuture, :string, null: false
  end

  # 変更前の状態
  def down
    change_column :shipping_methods, :days_to_arrival, :string, null: false
    change_column :shipping_methods, :prefecuture, :string, null: false
  end
end
