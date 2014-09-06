class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :empresa
      t.integer :valor
      t.date :dia_de_pago

      t.timestamps
    end
  end
end
