class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :codigo_interno
      t.string :codigo_externo
      t.string :nombre
      t.string :talla
      t.string :color
      t.text :ficha_tecnica
      t.text :ficha_produccion
      t.text :descripcion
      t.string :marca
      t.string :referencia_marca
      t.references :category

      t.timestamps
    end
    add_index :products, :category_id
  end
end
