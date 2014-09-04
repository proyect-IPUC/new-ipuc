class CreateDiezmoanuals < ActiveRecord::Migration
  def change
    create_table :diezmoanuals do |t|
      t.integer :valor
      t.date :año

      t.timestamps
    end
  end
end
