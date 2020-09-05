class ChangeDataBirthDayToChildren < ActiveRecord::Migration[6.0]
  def change
    change_column :children, :birth_day, :date
  end
end
