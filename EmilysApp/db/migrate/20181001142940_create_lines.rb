class CreateLines < ActiveRecord::Migration[5.2]
  def change
    create_table :lines do |t|
      t.integer :quantity
      t.decimal :unit_price, precision: 6, scale: 2
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
