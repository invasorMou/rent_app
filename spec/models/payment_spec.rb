require 'rails_helper'

describe "Payment" do
	subject { Payment.new }
	before(:each) do
    	@apartment = Apartment.create(number: 102)
    	@tenant = Tenant.create(name: "fulano", apartment_id: @apartment.id)

  	end

 	it 'is not valid without a date' do
 		
 		expect(subject).not_to be_valid
 		subject.date = 1.minute.ago
 		subject.tenant_id = @tenant.id
 		expect(subject).to be_valid
 	end
end