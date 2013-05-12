class RemoveTelFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :tel
  end

  def down
    add_column :users, :tel, :float
  end
end
