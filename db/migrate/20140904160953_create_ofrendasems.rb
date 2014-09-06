class CreateOfrendasems < ActiveRecord::Migration
  def change
    create_table :ofrendasems do |t|
      t.integer :valor
      t.date :dia

      t.timestamps
    end
  end
end
