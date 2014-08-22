class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.string :miembros
      t.string :eventos
      t.string :plan_trabajo
      t.references :directivas, index: true

      t.timestamps
    end
  end
end
