class CreatePaginas < ActiveRecord::Migration
  def change
    create_table :paginas do |t|
      t.string :ofrenda

      t.timestamps
    end
  end
end
