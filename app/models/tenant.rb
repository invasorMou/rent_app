class Tenant < ActiveRecord::Base
	has_many :payments
	belongs_to :apartment
end