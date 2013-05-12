class RemoveCelularFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :celular
  end

  def down
    add_column :users, :celular, :integer
  end
end
