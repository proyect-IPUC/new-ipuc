class CreatePTrabajos < ActiveRecord::Migration
  def change
    create_table :p_trabajos do |t|
      t.string :nombrep_trabajo
      t.date :fechap_trabajo
      t.text :descriptionp_trabajo
      t.boolean :aprobado?
      t.text :observacion
      t.references :directiva, index: true

      t.timestamps
    end
  end
end
