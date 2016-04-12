class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.string :descripcion
      t.string :photo
      t.references :category

      t.timestamps
    end
    add_index :types, :category_id
  end
end
