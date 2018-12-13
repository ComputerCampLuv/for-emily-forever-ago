class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.decimal :base_price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
