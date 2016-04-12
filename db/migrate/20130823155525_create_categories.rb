class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :codigo
      t.string :nombre
      t.text :descripcion
      t.string :imagen

      t.timestamps
    end
  end
end
