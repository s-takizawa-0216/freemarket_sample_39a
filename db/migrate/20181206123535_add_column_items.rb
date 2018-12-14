class AddColumnItems < ActiveRecord::Migration[5.2]
  def change
     add_reference :Items, :lcategory, index: true
     add_reference :Items, :mcategory, index: true
     add_reference :Items, :scategory, index: true
     add_reference :Items, :saler_id, index: true
     add_reference :Items, :buyer_id, index: true
     add_reference :Items, :user, index: true
  end
end
