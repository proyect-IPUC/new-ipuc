class CreateDiezmodia < ActiveRecord::Migration
  def change
    create_table :diezmodia do |t|
      t.integer :valor
      t.date :dia

      t.timestamps
    end
  end
end
