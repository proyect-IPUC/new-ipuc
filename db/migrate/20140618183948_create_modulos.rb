class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.string :junta
      t.string :jovenes
      t.string :damas
      t.string :esc_dom
      t.string :vigilancia
      t.string :aseo
      t.string :intercepcion
      t.string :recepcion
      t.string :misiones
      t.string :cafeteria
      t.string :alabanza
      t.string :renuevos
      t.string :evangelismo
      t.string :publicidad
      t.string :audiovisuales
      t.string :protemplo

      t.timestamps
    end
  end
end
