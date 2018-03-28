class Apartment < ActiveRecord::Base
   	validates :number, presence: true

	has_many :tenants
end