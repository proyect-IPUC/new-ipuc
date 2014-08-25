class CreateDiezsems < ActiveRecord::Migration
  def change
    create_table :diezsems do |t|
      t.string :valor
      t.date :dia

      t.timestamps
    end
  end
end
