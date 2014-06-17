class CreateDirectivas < ActiveRecord::Migration
  def change
    create_table :directivas do |t|
      t.string :nombre
      t.string :apellido
      t.string :cargo

      t.timestamps
    end
  end
end
