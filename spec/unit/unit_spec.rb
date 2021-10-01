# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'hermione granger', author: 'rowling', published_date: '01/01/2001', price: '1000')
  end


  it 'is valid title with valid attributes' do

    title = Book.new(title: 'hermione granger', author: 'rowling', published_date: '01/01/2001', price: '1000')
    expect(title).to be_valid
  end


  it 'is valid author with valid attributes' do

    author = Book.new(title: 'hermione granger', author: 'rowling', published_date: '01/01/2001', price: '1000')
    expect(author).to be_valid
  end


  it 'is valid date with valid attributes' do
    published_date = Book.new(title: 'hermione granger', author: 'rowling', published_date: '01/01/2001', price: '1000')
    expect(published_date).to be_valid
  end

  it 'is valid price with valid attributes' do
    price = Book.new(title: 'hermione granger', author: 'rowling', published_date: '01/01/2001', price: '1000')
    expect(price).to be_valid
  end
end
