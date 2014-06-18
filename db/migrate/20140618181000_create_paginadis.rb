class CreatePaginadis < ActiveRecord::Migration
  def change
    create_table :paginadis do |t|
      t.string :diezmo

      t.timestamps
    end
  end
end
