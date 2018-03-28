class Tenant < ActiveRecord::Base
	validates :name, presence: true
	validates :apartment_id, presence: true
	has_many :payments
	belongs_to :apartment
end