class RemoveShippingMethodFromShippingMethods < ActiveRecord::Migration[5.2]
  def change
    remove_column :shipping_methods, :shipping_methods, :string
  end
end
