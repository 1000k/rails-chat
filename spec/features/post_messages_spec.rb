require 'rails_helper'

RSpec.feature 'PostMessages', type: :feature do
  scenario 'Posting message' do
    visit '/messages'
    fill_in 'Message', with: 'DUMMY MESSAGE'
    click_button 'Send'

    expect(page).to have_content 'DUMMY MESSAGE'
  end
end
