class ChangeDataBreastTimeToBreasts < ActiveRecord::Migration[6.0]
  def up
    change_column :breasts, :breast_time, :integer, null: true
  end
  def down
    change_column :breasts, :breast_time, :string
  end
end
