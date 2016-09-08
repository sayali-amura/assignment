class EmployeesController < ApplicationController
	around_action :wrap_in_transaction, only: :show
	def index
		@employees = Employee.all
	end
	def new
		@employee = Employee.new(:address => Address.new)
		#params.fetch(:employee, {}).permit(:name, :email)
		#@employee = Employee.new
		#render plain: params[:id]	
		#@employee = Employee.new
		#@employee.build_address	
	end
	def wrap_in_transaction
		ActiveRecord::Base.Transaction do
			# begin
				puts '-----------------------------------------------Hello--------'
				asjdhsakdhk
				# yield
				@employee = Employee.find(params[:id])
			# ensure
			# 	raise ActiveRecord::Rollback
			# end
		end
	end
	# def show
	# 	@employee = Employee.find(params[:id])
	# end
	def create

		@employee = Employee.new(employee_params)
		@employee.save
		#render plain: employee_params
		redirect_to @employee
	end
	def edit
		#render plain: params
		@employee = Employee.find(params[:id])
		#render plain:@employee.address.city
		#@address = Address.find_by_resource_id(params[:id])
		#@city = @address.city
	end
	def update
		@employee = Employee.find(params[:id])
		if @employee.update(employee_params)
			redirect_to @employee
		else
			redirect_to edit_employee_path
		end
	end
	
	private 
		def employee_params
			params.require(:employee).permit(:name, :email, :phone, :salary, :Designation, address_attributes: [:city])

		end
end
