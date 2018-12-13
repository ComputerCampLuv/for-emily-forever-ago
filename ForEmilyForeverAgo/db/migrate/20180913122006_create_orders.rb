class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.date :ordered_on

      t.timestamps
    end
  end
end
