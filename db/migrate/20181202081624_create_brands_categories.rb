class CreateBrandsCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :brands_categories do |t|

      t.timestamps
    end
  end
end
