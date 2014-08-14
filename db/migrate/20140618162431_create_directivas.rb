class CreateDirectivas < ActiveRecord::Migration
  def change
    create_table :directivas do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
