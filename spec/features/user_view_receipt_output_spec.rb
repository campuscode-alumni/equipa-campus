require 'rails_helper'

feature 'user view receipt output' do
  scenario 'sucessfully' do

    contract = create(:contract)

    visit contracts_path

    click_on contract.id

    click_on 'Emitir recibo de saída'

    expect(page).to have_content contract.responsable

  end
end
