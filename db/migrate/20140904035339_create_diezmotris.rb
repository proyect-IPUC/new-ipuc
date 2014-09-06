class CreateDiezmotris < ActiveRecord::Migration
  def change
    create_table :diezmotris do |t|
      t.integer :valor
      t.date :trimestre

      t.timestamps
    end
  end
end
