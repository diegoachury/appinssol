class AddCelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cel, :float
  end
end
