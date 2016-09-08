module SessionsHelper
	def log_in(employee)
		session[:employee_id] = employee.id
	end
=begin
	def current_employee
		@current_employee ||= Employee.find_by(id: session[:employee_id])
	end
=end
	def log_out
		session.delete(:employee_id)
		#@current_employee = nil
	end
end