class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :celular, :string
    add_column :users, :telefono, :string
  end
end
