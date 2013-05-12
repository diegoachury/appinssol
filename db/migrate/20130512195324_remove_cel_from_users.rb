class RemoveCelFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :cel
  end

  def down
    add_column :users, :cel, :float
  end
end
