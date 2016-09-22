require 'rails_helper'

feature 'User issues return receipt' do
  scenario 'sucessfully' do
    equipment = create(:equipment)
    contract = create(:contract, equipment: [equipment])

    visit contracts_path

    click_on contract.id
    click_on 'Emitir Recibo de devolução'

    fill_in 'Nome', with: 'Juan'
    fill_in 'CPF',  with: '277'
    click_on 'Emitir recibo de devolução'

    expect(page).to have_css('h1', text: 'Recibo de Devolução')
    expect(page).to have_content 'Juan'
    expect(page).to have_content '277'
    expect(page).to have_content contract.return_date
    expect(page).to have_content contract.id
    expect(page).to have_content contract.customer.name
    expect(page).to have_content equipment.serial_number
    expect(page).to have_content equipment.equipment_category.name
  end

  scenario 'unsuccessfully' do
    equipment = create(:equipment)
    contract = create(:contract, equipment: [equipment])

    visit contracts_path

    click_on contract.id
    click_on 'Emitir Recibo de devolução'
    fill_in 'Nome', with: ''
    fill_in 'CPF',  with: ''
    click_on 'Emitir recibo de devolução'

    expect(page).to have_content 'Campos Nome e CPF são obrigatórios'
  end
end
