class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :evento
      t.text :descripcion
      t.date :fecha
      t.time :hora_inicio
      t.time :hora_final

      t.timestamps
    end
  end
end
