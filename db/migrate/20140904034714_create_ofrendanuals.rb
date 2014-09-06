class CreateOfrendanuals < ActiveRecord::Migration
  def change
    create_table :ofrendanuals do |t|
      t.integer :valor
      t.date :año

      t.timestamps
    end
  end
end
