class CreatePTrabajos < ActiveRecord::Migration
  def change
    create_table :p_trabajos do |t|
      t.string :NombrePlanTrabajo
      t.string :fechaPlanTrabajo
      t.text :DescripcionPlan
      t.boolean :Aprobada?
      t.text :Observacion

      t.timestamps
    end
  end
end
