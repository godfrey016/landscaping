class CustomersController < ApplicationController

	def new
       @customer = Customer.new
	end	

	def show
       @customer = Customer.find(params[:id])
	end	

	def index
		@customers = Customer.all

       
	end	

	def create
		@customer = Customer.new(customer_params)

		if @customer.save
			flash[:notice] = "Customer was Successfully Created"
            redirect_to customer_path(@customer)
        else
           render 'new'
        end       
	end	

	def customer_params
       params.require(:customer).permit(:customer_first_nm,:customer_last_nm,:customer_email,:comment)
	end	

	def edit
      @customer = Customer.find(params[:id])
	end	

	def update
       @customer = Customer.find(params[:id])

		if @customer.update(customer_params)
			flash[:notice] = "Customer was Successfully Updated"
            redirect_to customer_path(@customer)
        else
           render 'edit'
        end 
	end	

end	