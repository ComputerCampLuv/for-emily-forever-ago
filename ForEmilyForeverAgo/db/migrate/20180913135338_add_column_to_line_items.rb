class AddColumnToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :line_items, :product, foreign_key: true
  end
end
