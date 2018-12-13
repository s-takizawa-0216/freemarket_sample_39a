class AddDefaultToShippingMethods < ActiveRecord::Migration[5.2]
  def up
    change_column_default :shipping_methods, :burden_fee, nil
    change_column_default :shipping_methods, :prefecuture, nil
    change_column_default :shipping_methods, :days_to_arrival, nil
  end

  def down
    change_column_default :shipping_methods, :burden_fee, false
    change_column_default :shipping_methods, :prefecuture, false
    change_column_default :shipping_methods, :days_to_arrival, false
  end
end
