class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :category
      t.string :description
      t.string :serial_number
      t.string :asset_number
      t.decimal :acquisition_price
      t.timestamps
    end
  end
end
