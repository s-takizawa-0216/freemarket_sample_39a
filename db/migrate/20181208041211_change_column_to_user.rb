class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :image, :string, null: true, default: 0
  end

  # 変更前の状態
  def down
    change_column :users, :image, :string, null: false, default: 0
  end

end
