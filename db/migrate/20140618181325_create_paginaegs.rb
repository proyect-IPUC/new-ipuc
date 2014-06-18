class CreatePaginaegs < ActiveRecord::Migration
  def change
    create_table :paginaegs do |t|
      t.string :egresos

      t.timestamps
    end
  end
end
