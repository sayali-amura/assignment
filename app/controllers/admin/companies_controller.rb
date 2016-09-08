#require '/home/amura/training/week6/demo/app/controllers/ApplicationController'
class Admin::CompaniesController < ApplicationController
	#http_basic_authenticate_with name: "sayali", password: "123"
	USERS = { "sayali" => "123" }
 
  	before_action :authenticate
 
  	
 
    def authenticate
      authenticate_or_request_with_http_digest do |username|
        USERS[username]
      end
    end
	def index
		cookies[:name] = 'sayali'
		@companies = Company.all
	end
	def new
		@company = Company.new()
		@company.addresses << Address.new
	end
	def create
		#render plain:cookies[:session]
		@company = Company.new(company_params)
		if params[:add_address]
			@company.addresses << Address.new
		else
			if @company.save
				flash[:alert] = 'Successfully created'
				redirect_to @company and return
			end
		end
		render :new
	
	end

	def edit
		@company = Company.find(params[:id])
	end
	def show
		@company = Company.find(params[:id])
		@client = Company.find(params[:id])
		p '----------hello-------------'
		 respond_to do |format|
      format.html
      format.pdf { render pdf: generate_pdf(@client), :template => 'admin/companies/show.html.erb'}
    end
	end
	def download_pdf
    client = Company.find(params[:company_id])
    send_data generate_pdf(client),
              filename: "#{client.name}.pdf",
              type: "application/pdf"
  end
 
  private
 
    def generate_pdf(client)
      Prawn::Document.new do
        text client.name, align: :center
        text "Address: #{client.addresses}"
      end.render
    end

	def company_params
		#render plain: params
		params.require(:company).permit(:name, :addresses_attributes => [:city])
	end

end
