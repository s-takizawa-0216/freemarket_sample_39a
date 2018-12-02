class CreateBrandsCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :brands_categories do |t|
      t.integer :bland_id, null: false, foreign_key: true
      t.integer :large_category_id, null: false, foreign_key: true
      t.integer :medium_category_id, null: false, foreign_key: true
      t.integer :small_category_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
