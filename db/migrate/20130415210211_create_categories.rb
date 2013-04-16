class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :descripcion
      t.string :photo

      t.timestamps
    end
  end
end
