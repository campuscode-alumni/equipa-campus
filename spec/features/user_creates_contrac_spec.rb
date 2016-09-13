require 'rails_helper'

feature 'user creates contract' do
  scenario 'successfully' do
    
    visit new_contract_path

    fill_in 'Customer', with: 'Vagas'

    click_on 'Criar Contrato'

    expect(page).to have_content 'Vagas'
  end
end
