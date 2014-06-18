class CreatePaginains < ActiveRecord::Migration
  def change
    create_table :paginains do |t|
      t.string :ingresos

      t.timestamps
    end
  end
end
