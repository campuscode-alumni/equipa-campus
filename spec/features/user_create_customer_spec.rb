require 'rails_helper'

feature 'user create customer' do
  scenario 'successfully' do

    customer = build(:customer)

    visit new_customer_path

    fill_in 'Nome', with: customer.name
    #fill_in 'Tipo', with: customer.customer_type
    select 'PF', from: 'Tipo' 
    fill_in 'Endereço de faturamento', with: customer.billing_address
    fill_in 'Email', with: customer.email
    fill_in 'Telefone', with: customer.phone
    fill_in 'Cnpj/Cpf', with: customer.document

    click_on 'Cadastrar Cliente'

    expect(page).to have_content 'Paulo'

  end
end
