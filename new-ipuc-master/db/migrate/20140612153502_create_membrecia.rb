class CreateMembrecia < ActiveRecord::Migration
  def change
    create_table :membrecia do |t|
      t.string :nombre
      t.string :apellidos
      t.string :telefono
      t.string :direccion
      t.string :email
      t.boolean :recibioEspiritu
      t.date :fecha
      t.text :comentarios

      t.timestamps
    end
  end
end
