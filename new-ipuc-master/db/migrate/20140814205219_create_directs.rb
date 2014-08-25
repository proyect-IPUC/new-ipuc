class CreateDirects < ActiveRecord::Migration
  def change
    create_table :directs do |t|
      t.string :index

      t.timestamps
    end
  end
end
