class PaymentsController < ApplicationController
	def new
		@pay = Payment.new
	end
	def create
		Payment.create!(pay_params)
		redirect_to 'new_payments'		
	end
	
 	private
 	def pay_params
 		params.require(:payment).permit(:date, :amout, :description, :tenant_id)
 	end
end