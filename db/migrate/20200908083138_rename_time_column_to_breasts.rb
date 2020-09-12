class RenameTimeColumnToBreasts < ActiveRecord::Migration[6.0]
  def change
    rename_column :breasts, :time, :breast_time
  end
end
