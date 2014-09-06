class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :evento
      t.integer :valor
      t.date :dia

      t.timestamps
    end
  end
end
