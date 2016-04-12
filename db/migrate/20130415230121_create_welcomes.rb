class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :logo
      t.string :name
      t.text :leyenda
      t.text :mensaje

      t.timestamps
    end
  end
end
