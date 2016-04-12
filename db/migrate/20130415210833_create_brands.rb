class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :descripcion
      t.string :photo
      t.string :ruta_pdf
      t.references :type

      t.timestamps
    end
    add_index :brands, :type_id
  end
end
