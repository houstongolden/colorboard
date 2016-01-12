class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.integer :columns_count
      t.integer :rows_count
      t.text :color_data

      t.timestamps null: false
    end
  end
end
