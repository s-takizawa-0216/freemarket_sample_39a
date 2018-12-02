class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.integer     :credit_number,   null: false
      t.integer     :security_cord,   null: false
      t.integer     :year,            null: false
      t.integer     :month,           null: false
      t.references  :user,            null: false ,foreign_key: true
      t.timestamps
    end
  end
end
