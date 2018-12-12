class Mcotegories < ActiveRecord::Migration[5.2]
  def change
     add_reference :mcategories, :lcategories
  end
end
