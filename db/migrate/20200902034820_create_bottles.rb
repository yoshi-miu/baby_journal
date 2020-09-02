class CreateBottles < ActiveRecord::Migration[6.0]
  def change
    create_table :bottles do |t|
      t.string  :content, null: false
      t.integer :amount, null: false
      t.references :child, null: false, foreign_key: true
      t.timestamps
    end
  end
end
