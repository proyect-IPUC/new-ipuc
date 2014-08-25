class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :tipo
      t.string :valor
      t.date :dia_de_pago

      t.timestamps
    end
  end
end
