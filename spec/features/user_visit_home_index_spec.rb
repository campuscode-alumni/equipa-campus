require 'rails_helper'

feature 'User visit home index' do
  scenario 'sucessufully' do

    visit root_path

    click_on 'orçamentos'
    click_on 'contratos'

  end
end
