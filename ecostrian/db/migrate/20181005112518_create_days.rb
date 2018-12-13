class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.datetime :day_date

      t.timestamps
    end
  end
end
