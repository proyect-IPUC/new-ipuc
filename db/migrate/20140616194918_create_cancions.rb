class CreateCancions < ActiveRecord::Migration
  def change
    create_table :cancions do |t|
      t.string :cancion
      t.string :genero
      t.string :artista
      t.text :letra

      t.timestamps
    end
  end
end
