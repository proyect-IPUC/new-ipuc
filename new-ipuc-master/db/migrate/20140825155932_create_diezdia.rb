class CreateDiezdia < ActiveRecord::Migration
  def change
    create_table :diezdia do |t|
      t.string :valor
      t.date :dia

      t.timestamps
    end
  end
end
