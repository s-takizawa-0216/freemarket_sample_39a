class AddCloumnTitles < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :lcategory, index: true
    add_reference :items, :mcategory, index: true
    add_reference :items, :scategory, index: true
  end
end
