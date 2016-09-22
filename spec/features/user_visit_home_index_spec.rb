require 'rails_helper'

feature 'User visit home index' do
  scenario 'and see links successfully' do
    visit root_path

    expect(page).to have_link 'Contratos'
    expect(page).to have_link 'Clientes'
    expect(page).to have_link 'Equipamentos'
    expect(page).to have_link 'Tabela de Preços'
    expect(page).to have_link 'Peça seu orçamento'
  end
  scenario 'and click on budget link' do
    budget = build(:budget)

    visit root_path

    click_on 'Peça seu orçamento'

    fill_in 'Nome', with: budget.name
    fill_in 'Telefone', with: budget.phone
    fill_in 'Email', with: budget.email
    fill_in 'Assunto', with: budget.subject

    click_on 'Enviar orçamento'

    expect(page).to have_content budget.name
    expect(page).to have_content budget.phone
    expect(page).to have_content budget.email
    expect(page).to have_content budget.subject
  end
end
