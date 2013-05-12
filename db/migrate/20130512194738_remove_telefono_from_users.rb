class RemoveTelefonoFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :telefono
  end

  def down
    add_column :users, :telefono, :integer
  end
end
