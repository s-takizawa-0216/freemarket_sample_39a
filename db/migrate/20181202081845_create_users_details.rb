class CreateUsersDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :users_details do |t|

      t.timestamps
    end
  end
end
