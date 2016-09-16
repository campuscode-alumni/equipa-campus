require 'rails_helper'

feature 'User issues return receipt' do
  scenario 'sucessfully' do
    contract = create(:contract)

    visit contracts_path

    click_on contract.id
    click_on 'Emitir Recibo de devolução'
    fill_in 'Nome', with: 'Juan'
    fill_in 'CPF',  with: '277'
    click_on 'Visualizar Recibo'

    expect(page).to have_css('h1', text: 'Recibo de Devolução')
    expect(page).to have_content 'Juan'
    expect(page).to have_content '277'
    expect(page).to have_content contract.equipment

  end
end
