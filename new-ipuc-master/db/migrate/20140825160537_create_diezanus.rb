class CreateDiezanus < ActiveRecord::Migration
  def change
    create_table :diezanus do |t|
      t.string :valor
      t.date :dia

      t.timestamps
    end
  end
end
