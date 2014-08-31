class CreateOfrendatris < ActiveRecord::Migration
  def change
    create_table :ofrendatris do |t|
      t.string :valor
      t.date :dia

      t.timestamps
    end
  end
end
