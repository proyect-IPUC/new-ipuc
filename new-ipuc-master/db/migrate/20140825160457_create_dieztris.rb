class CreateDieztris < ActiveRecord::Migration
  def change
    create_table :dieztris do |t|
      t.string :valor
      t.date :dia

      t.timestamps
    end
  end
end
