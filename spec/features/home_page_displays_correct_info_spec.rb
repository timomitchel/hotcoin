require 'rails_helper'

feature 'homepage' do 
  context 'guest visits homepage' do
    it 'sees hotcoin page with relevant info' do
       
      visit root_path

      expect(page).to have_content 'Hotcoin'
      expect(page).to have_content 'Search Coins'
      expect(page).to have_content 'BTC'
      expect(page).to have_content 'ETH'
      expect(page).to have_content 'XRP'
    end
  end
end