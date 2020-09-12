class AddColumnToBreasts < ActiveRecord::Migration[6.0]
  def change
    add_column :breasts, :start_time, :datetime, null: false
    add_column :breasts, :end_time, :datetime, null: false
  end
end
