class ApartmentsController < ApplicationController
	def index
		@tenants = Tenant.all
	end

end