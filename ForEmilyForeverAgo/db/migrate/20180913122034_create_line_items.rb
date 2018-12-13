class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|

      t.decimal :unit_price, precision: 6, scale: 2
      t.integer :quantity

      t.timestamps
    end
  end
end
