class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string     :name,      null: false
      t.string     :birth_day, null: false
      t.references :user,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
