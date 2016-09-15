class RemoveCategoryFromEquipment < ActiveRecord::Migration[5.0]
  def change
    # Equipment.all.each do |e|
    #   cat = EquipmentCategory.create(name: e.category)
    #   e.equipment_category = cat
    #   e.save!
    end
    remove_column :equipment, :category, :string
  end
end
