class CreateOfrendadia < ActiveRecord::Migration
  def change
    create_table :ofrendadia do |t|
      t.string :valor
      t.date :dia

      t.timestamps
    end
  end
end
