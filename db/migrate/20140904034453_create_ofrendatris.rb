class CreateOfrendatris < ActiveRecord::Migration
  def change
    create_table :ofrendatris do |t|
      t.integer :valor
      t.date :trimestre

      t.timestamps
    end
  end
end
