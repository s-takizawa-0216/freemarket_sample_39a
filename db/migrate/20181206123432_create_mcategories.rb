class CreateMcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :mcategories do |t|
      t.string :name, index: true , null: false
      t.timestamps
    end
  end
end
