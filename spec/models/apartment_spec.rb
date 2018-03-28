require 'rails_helper'

describe Apartment do
  subject { Apartment.new }

  it "is not valid without a number" do
    expect(subject).not_to be_valid
    subject.number = 102
    expect(subject).to be_valid
  end
  
  it "number has to be a Integer" do
    subject.number = 102
    expect(subject.number).to be_a Integer
  end

  it "number has to be a Integer made of three digits" do
    subject.number = 102
    expect(subject.number.to_s.length).to eq 3
  end


  
end