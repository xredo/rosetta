require 'spec_helper'

feature 'Local repository' do
  before { visit local_samples_path }

  scenario 'show the translations', js: true do
    find('.open-phrases-menu-btn').click

    within '.phrases-menu' do
      expect(page).to have_content 'Hello world!'
      expect(page).to have_content 'samples.index.hello'
      expect(page).to have_content 'config/locales/en/samples.yml'
    end
  end
end
