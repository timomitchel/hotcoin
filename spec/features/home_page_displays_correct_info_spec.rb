require 'rails_helper'

feature 'homepage' do 
  context 'guest visits homepage' do
    it 'sees hotcoin page with relevant info' do
       
      visit root_path

      expect(page).to have_content 'Hot Coin'
      expect(page).to have_button 'Search Twitter'
      expect(page).to have_content 'BTC'
      expect(page).to have_content 'ETH'
      expect(page).to have_content 'XRP'
    end
  end
end