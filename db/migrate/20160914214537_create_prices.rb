class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.integer :rental_period
      t.decimal :amount
      t.references :equipment_category, foreign_key: true

      t.timestamps
    end
  end
end
