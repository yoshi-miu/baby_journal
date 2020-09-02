class CreatePees < ActiveRecord::Migration[6.0]
  def change
    create_table :pees do |t|
      t.text :memo
      t.references :child, null: false, foreign_key: true
      t.timestamps
    end
  end
end
