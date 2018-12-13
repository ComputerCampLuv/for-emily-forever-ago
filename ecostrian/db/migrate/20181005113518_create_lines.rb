class CreateLines < ActiveRecord::Migration[5.2]
  def change
    create_table :lines do |t|
      t.references :day, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :quantity
      t.decimal :actual_price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
