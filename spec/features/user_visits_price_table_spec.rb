require 'rails_helper'

feature 'User visits price table' do
  scenario 'sucessfully' do
    category = EquipmentCategory.create(name: )
    equipment = Equipment.create(category: 'Furadeira')
    price = Price.create(rental_period: 5, category: equipment.category, amount: 10 )

    visit price_path

    expect(page).to have_content("Furadeira")
    expect(page).to have_content("5")

  end
end
