class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.string     :evaluations ,  null: false
      t.text       :comment ,      null: false
      t.references :saler ,        null: false
      t.references :buyer ,        null: false
      t.timestamps
    end
  end
end
