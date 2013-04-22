class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :nombre
      t.string :email
      t.string :direccion
      t.string :ciudad
      t.string :telefono
      t.text :comentario
      t.references :brand
      t.references :type

      t.timestamps
    end
    add_index :quotes, :brand_id
    add_index :quotes, :type_id
  end
end
