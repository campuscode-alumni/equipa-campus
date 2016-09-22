require 'rails_helper'

feature 'user creates contract' do
  scenario 'successfully' do
    customer = create(:customer, name: 'Paulo')
    category = create(:equipment_category, name: 'Furadeira')
    create(:equipment, equipment_category: category)

    contract = build(:contract, customer: customer, initial_date: '2016-01-01',
                     amount: 10, acquisition_price: 20, discount: 5)

    visit new_contract_path

    select 'Paulo', from: 'Cliente'

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

    expect(page).to have_content "Cliente: #{customer.name}"
    expect(page).to have_content "R$ 20,00"
    expect(page).to have_content contract.delivery_address
    expect(page).to have_content contract.responsable
    expect(page).to have_content contract.cpf
    expect(page).to have_content "#{contract.rental_period} dias"
    expect(page).to have_content contract.rental_period
    expect(page).to have_content "01/01/2016"
    expect(page).to have_content "R$ 10,00"
    expect(page).to have_content "R$ 5,00"
    expect(page).to have_content I18n.l contract.created_at
  end

  scenario 'unsuccessfully' do
    customer = create(:customer, name: 'Paulo')
    category = create(:equipment_category, name: 'Furadeira')
    create(:equipment, equipment_category: category)

    contract = build(:contract, customer: customer, initial_date: '2016-01-01', amount: 10)

    visit new_contract_path

    select 'Paulo', from: 'Cliente'

    check category.name
    fill_in 'Valor dos equipamentos', with: ''
    fill_in 'Endereço de Entrega',    with: ''
    fill_in 'Responsável na Obra',    with: ''
    fill_in 'CPF do Responsável',     with: ''
    fill_in 'Prazo de Locação',       with: ''
    fill_in 'Data de Início',         with: ''
    fill_in 'Valor',                  with: ''
    fill_in 'Desconto',               with: ''
    fill_in 'Data de Emissão',        with: ''

    click_on 'Criar Contrato'

    expect(page).to have_content('Todos campos são obrigatórios')
  end

end
