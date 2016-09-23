require 'rails_helper'
feature 'User visits contract index' do
  scenario 'successfully' do
    equipment = create(:equipment)
    contract = create(:contract, equipment: [equipment])
    visit contracts_path

    expect(page).to have_content(contract.id)
    expect(page).to have_content(contract.customer.name)
    expect(page).to have_content(contract.return_date)

  end
end
