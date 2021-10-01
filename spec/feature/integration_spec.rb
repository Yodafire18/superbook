# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'hermione granger'
    fill_in 'Author', with: 'rowling'
    fill_in 'Price', with: '1000'
    fill_in 'Published date', with: '01/01/2001'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('hermione granger')
  end
  
  scenario 'valid price' do
    visit new_book_path
    fill_in 'Title', with: 'hermione granger'
    fill_in 'Author', with: 'rowling'
    fill_in 'Published date', with: '01/01/2001'
    fill_in 'Price', with: '1000'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('1000')
  end

  scenario 'valid author' do
    visit new_book_path
    fill_in 'Title', with: 'hermione granger'
    fill_in 'Author', with: 'rowling'
    fill_in 'Price', with: '1000'
    fill_in 'Published date', with: '01/01/2001'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('rowling')
  end

  scenario 'valid date' do
    visit new_book_path
    fill_in 'Title', with: 'hermione granger'
    fill_in 'Author', with: 'rowling'
    fill_in 'Published date', with: '01/01/2001'
    fill_in 'Price', with: '1000'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('01/01/2001')
  end
end
