class CreatePagaeventos < ActiveRecord::Migration
  def change
    create_table :pagaeventos do |t|
      t.string :evento
      t.string :valor
      t.date :dia

      t.timestamps
    end
  end
end
