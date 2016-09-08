class Admin::RolesController < ApplicationController
	def index
		@roles = Roles.all
	end
	def create
		@role = Role.new(role_params)
		if @role.save
			redirect_to @role
		end
	end
	def new
	end
	def show
		@role = Role.find(params[:id])
		@employee = @role.employee
	end
	def role_params
		params.require(:roles).permit(:name)
	end

end
