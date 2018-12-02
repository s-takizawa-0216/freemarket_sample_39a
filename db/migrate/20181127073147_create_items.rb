class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name, index: true , null: false
      t.integer :price, null: false
      t.text    :detail, null: false
      t.string  :condition, null: false
      t.string  :size, null: false
      t.timestamps
    end
  end
end
