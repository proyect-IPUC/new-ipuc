class CreateOfrendanuals < ActiveRecord::Migration
  def change
    create_table :ofrendanuals do |t|
      t.string :valor
      t.date :dia

      t.timestamps
    end
  end
end
