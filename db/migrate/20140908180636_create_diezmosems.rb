class CreateDiezmosems < ActiveRecord::Migration
  def change
    create_table :diezmosems do |t|
      t.integer :valor
      t.date :semana

      t.timestamps
    end
  end
end
