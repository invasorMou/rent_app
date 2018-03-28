require 'rails_helper'

describe Tenant do
  subject { Tenant.new }
  before(:each) do
    @apartment = Apartment.create(number: 102)
  end

  it "is not valid without a name and apartment_id" do
    expect(subject).not_to be_valid
    subject.name = "Fulano"
    subject.apartment_id = @apartment.id
    expect(subject).to be_valid
  end
  
  it "has to have a string for name" do
    subject.name = 'Fulano'
    expect(subject.name).to be_a String
  end

 
  
end