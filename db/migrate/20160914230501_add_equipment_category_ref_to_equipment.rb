class AddEquipmentCategoryRefToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_reference :equipment, :equipment_category, foreign_key: true
  end
end
