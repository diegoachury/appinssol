class AddWelcomeIdToCustomers < ActiveRecord::Migration
  def change
  	add_column :customers, :welcome_id, :integer
  	add_index  :customers, :welcome_id
  end
end
