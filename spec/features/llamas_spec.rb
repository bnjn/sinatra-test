require 'spec_helper'

RSpec.feature 'Show a nice picture of llama using the GovUK design spec template.' do
  scenario 'Visiting the page shows an image of llamas.' do
    visit '/llama'
    expect(page).to have_xpath('//img[@src="assets/images/llama.jpeg"]')
  end

  scenario 'Visiting the page shows "Secret Llama Government" title and heading.' do
    visit '/llama'
    expect(page).to have_xpath('//title', text: 'Secret Llama Government')
      .and have_xpath('//h1', text: 'Secret Llama Government', class: 'govuk-heading-xl')
  end

  scenario 'Visiting the page shows a header with the crown logo and "GOV.UK"' do
    visit '/llama'
    expect(page).to have_xpath('//header', class: 'govuk-header')
      .and have_xpath('//header/div', class: 'govuk-header__container govuk-width-container')
      .and have_xpath('//header/div/div', class: 'govuk-header__logo')
      .and have_xpath('//header/div/div/a[@class="govuk-header__link govuk-header__link--homepage"][@href="/"]')
      .and have_xpath('//header/div/div/a/span', class: 'govuk-header__logotype')
      .and have_xpath('//header/div/div/a/span/svg', class: 'govuk-header__logotype-crown')
      .and have_xpath('//header/div/div/a/span/span', class: 'govuk-header__logotype-text', text: 'GOV.UK')
  end
end
