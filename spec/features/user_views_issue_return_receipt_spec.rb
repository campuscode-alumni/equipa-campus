require 'rails_helper'

feature 'User issues return receipt' do
  scenario 'sucessfully' do
    equipment = create(:equipment)
    contract = create(:contract, equipment: [equipment])
    create(:receipt, name: 'Juan', cpf: '277', contract: contract)

    visit contracts_path

    click_on contract.id
    click_on 'Visualizar recibo de devolução'
    expect(page).to have_content('Juan')
    expect(page).to have_content('277')
  end
end
