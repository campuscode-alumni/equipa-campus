require 'rails_helper'

feature 'User creates category' do
  scenario 'sucessfully' do

    visit new_equipment_path
    fill_in 'Categoria', with: "EPI"
    fill_in 'Modelo', with: "BOSCH"
    fill_in 'Numero de Serie', with: "1234567890"
    fill_in 'Numero de Inventario', with: "EQUIPA-12345"
    fill_in 'Valor do Equipamento', with: "R$ 25,00"
    click_on 'Incluir Equipamento'

    expect(page).to have_content("EPI")
    expect(page).to have_content("BOSCH")


  end
end
