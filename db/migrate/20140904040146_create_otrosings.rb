class CreateOtrosings < ActiveRecord::Migration
  def change
    create_table :otrosings do |t|
      t.string :actividad
      t.integer :valor
      t.date :dia

      t.timestamps
    end
  end
end
