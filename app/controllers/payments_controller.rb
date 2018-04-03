class PaymentsController < ApplicationController
	before_action :authenticate_user!, except:[:show]

	def new
		@pay = Payment.new
	end
	def create
		Payment.create!(pay_params)
		redirect_to '/payments/new' 		
	end
	def show
		@payments = Payment.where(tenant_id: params[:id])
		render :layout => "show"
	end
 	private

 	def pay_params
 		params.require(:payment).permit(:date, :amount, :description, :tenant_id)
 	end
end