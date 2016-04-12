class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nombre
      t.string :email
      t.string :direccion
      t.string :ciudad
      t.string :telefono
      t.text :comentario

      t.timestamps
    end
  end
end
