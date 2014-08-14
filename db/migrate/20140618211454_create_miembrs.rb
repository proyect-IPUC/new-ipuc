class CreateMiembrs < ActiveRecord::Migration
  def change
    create_table :miembrs do |t|
      t.string :nombre
      t.string :apellido
      t.string :cargo
      t.string :celular
      t.string :TelFijo

      t.timestamps
    end
  end
end
