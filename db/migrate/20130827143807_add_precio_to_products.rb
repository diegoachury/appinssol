class AddPrecioToProducts < ActiveRecord::Migration
  def change
    add_column :products, :precio, :decimal
  end
end
