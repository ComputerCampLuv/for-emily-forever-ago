class AddItemToLines < ActiveRecord::Migration[5.2]
  def change
    add_reference :lines, :item, foreign_key: true
  end
end
