class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.references :membrecium
      t.string :eventos
      t.references :directivas, index: true

      t.timestamps
    end
  end
end
