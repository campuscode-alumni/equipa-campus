require 'rails_helper'

feature 'User visits price table' do
  scenario 'sucessfully' do
    category = EquipmentCategory.create(name: 'Elétricos')

    Price.create(rental_period: 5, equipment_category: category, amount: 10)

    visit price_index_path

    expect(page).to have_content('Elétricos')
    expect(page).to have_content('5')
    expect(page).to have_content('10')
  end
end
