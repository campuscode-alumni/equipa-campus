require 'rails_helper'

feature 'user send budget' do
  scenario 'sucessfully' do
    budget = build(:budget)
    visit new_budget_path

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
  scenario 'unsucessfully' do
    visit new_budget_path

    click_on 'Enviar orçamento'

    expect(page).to have_content 'Favor preencher todos os campos'
  end
end
