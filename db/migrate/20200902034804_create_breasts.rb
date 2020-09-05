class CreateBreasts < ActiveRecord::Migration[6.0]
  def change
    create_table :breasts do |t|
      t.string     :side,  null: false
      t.string     :time
      t.references :child, null: false, foreign_key: true
      t.timestamps
    end
  end
end
