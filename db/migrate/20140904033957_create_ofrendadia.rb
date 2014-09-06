class CreateOfrendadia < ActiveRecord::Migration
  def change
    create_table :ofrendadia do |t|
      t.integer :valor
      t.date :dia

      t.timestamps
    end
  end
end
