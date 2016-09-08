class Admin::SessionsController < ApplicationController
  def new
  end
  def create
  	@employee = Employee.find_by(email: params[:session][:email].downcase)
		if @employee && @employee.authenticate(params[:session][:password])
			log_in @employee
			redirect_to @employee
		else
			flash.now[:danger] = 'Wrong credentials'
			render 'new'
		end
	end
end
