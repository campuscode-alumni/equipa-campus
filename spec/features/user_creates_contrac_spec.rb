require 'rails_helper'

feature 'user creates contract' do
  scenario 'successfully' do
    category = create(:equipment_category, name: 'Furadeira')
    create(:equipment, equipment_category: category)

    contract = build(:contract)

    visit new_contract_path

    fill_in 'Cliente', with: contract.customer
    check category.name
    fill_in 'Valor dos equipamentos', with: contract.acquisition_price
    fill_in 'Endereço de Entrega', with: contract.delivery_address
    fill_in 'Responsável na Obra', with: contract.responsable
    fill_in 'CPF do Responsável', with: contract.cpf
    fill_in 'Prazo de Locação', with: contract.rental_period
    fill_in 'Data de Início', with: contract.initial_date
    fill_in 'Valor', with: contract.amount
    fill_in 'Desconto', with: contract.discount
    fill_in 'Data de Emissão', with: contract.created_at

    click_on 'Criar Contrato'

    expect(page).to have_content 'Vagas'
    expect(page).to have_content category.name
  end
end
