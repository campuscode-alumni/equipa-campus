require 'rails_helper'

feature 'User creates equipment' do
  scenario 'sucessfully' do

    visit new_equipment_path
    fill_in 'Categoria', with: "EPI"
    fill_in 'Modelo', with: "BOSCH"
    fill_in 'Número de Série', with: "1234567890"
    fill_in 'Número de Inventário', with: "EQUIPA-12345"
    fill_in 'Valor do Equipamento', with: 25.52
    click_on 'Incluir Equipamento'

    expect(page).to have_content("EPI")
    expect(page).to have_content("BOSCH")
    expect(page).to have_content("1234567890")
    expect(page).to have_content("EQUIPA-12345")
    expect(page).to have_content("25.52")


  end
end
