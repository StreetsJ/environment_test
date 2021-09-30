# location: spec/unit/title_unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', 
                        author: 'J.K. Rowling', 
                        price: 0,
                        publish_date: '01-01-2000')
  end

  # ALL attributes valid
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  # Title not valid test
  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  # Author not valid test
  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  # Price not valid test
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  # Publish date not valid test
  it 'is not valid without a publish date' do
    subject.publish_date = nil
    expect(subject).not_to be_valid
  end
end
