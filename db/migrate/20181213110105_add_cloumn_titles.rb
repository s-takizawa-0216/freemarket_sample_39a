class AddCloumnTitles < ActiveRecord::Migration[5.2]
  def change
    add_reference :Items, :lcategory, index: true
    add_reference :Items, :mcategory, index: true
    add_reference :Items, :scategory, index: true
  end
end
