require 'spec_helper'

RSpec.feature 'Show a nice picture of llama using the GovUK design spec template.' do
  scenario 'Visiting the page shows an image of llamas.' do
    visit '/llama'
    expect(page).to have_xpath('//img[@src="assets/images/llama.jpeg"]')
  end

  scenario 'Visiting the page shows "Secret Llama Government" title and heading.' do
    visit '/llama'
    expect(page).to have_xpath('//title', text: 'Secret Llama Government')
      .and have_xpath('//h1', text: 'Secret Llama Government')
  end
end
