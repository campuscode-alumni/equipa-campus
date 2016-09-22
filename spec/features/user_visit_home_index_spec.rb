require 'rails_helper'

feature 'User visit home index' do
  scenario 'sucessufully' do
    visit root_path

    expect(page).to have_link 'Orçamentos'
    expect(page).to have_link 'Contratos'
    expect(page).to have_link 'Clientes'
    expect(page).to have_link 'Equipamentos'
    expect(page).to have_link 'Tabela de Preços'
    expect(page).to have_link 'Peça seu orçamento'
  end
end
