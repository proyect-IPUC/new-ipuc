class CreateDiezmotris < ActiveRecord::Migration
  def change
    create_table :diezmotris do |t|
      t.string :valor
      t.date :trimestral

      t.timestamps
    end
  end
end
