require 'rails_helper'

feature 'user create customer' do
  scenario 'successfully' do

    visit new_customer_path

    fill_in 'Nome', with: 'Paulo'

    click_on 'Cadastrar Cliente'

    expect(page).to have_content 'Paulo'

  end
end
