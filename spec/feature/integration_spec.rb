# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Static content', type: :feature do
  it 'shows the static text' do
    visit books_path
    expect(page).to have_content('Books')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 12.50
    fill_in 'Publish date', with: '2019-10-12'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content(12.50)
    expect(page).to have_content('2019-10-12')
  end
end

# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in 'Price', with: 12.50
#     click_on 'Create Book'
#     visit book_url
#     expect(page).to have_content(12.50)
#   end
# end

# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in 'Publish date', with: '2019-10-12'
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('2019-10-12')
#   end
# end