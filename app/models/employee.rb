#
#=begin
class SalaryValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		unless !value.nil?
			record.errors[attribute] << ("salary not specified")
			return
		end
		unless value > 0 
			record.errors[attribute] << (options[:message] || "Salary should be greater than zero.")
			
		end
	end
end
#=end
class Employee < ActiveRecord::Base

	belongs_to :company
	has_one :address
	validates :email, :phone, uniqueness: true
	validates :name, format: { with: /[[:alpha:]]+?[[a-z][A-z] ]+/,
	 message: "Only letters and spaces allowed." }
	validates :email, format: {with: /\A([^@\s]+)@(([a-z]+\.)+[a-z]{2,})\z/i, 
	message: "Email format not valid."}
	validates :phone, format: { with: /[0-9]{10}/, message: "Enter valid mobile number."}
	validates :salary, presence: true, salary: true
end

#Employee.order(salary: :desc).limit(5)
#Employee.joins(:address).where("addresses.city":  'Pune')
#Employee.joins(:address).select(:name, :email, 'addresses.city').to_json(include: :address)	
#Employee.where(salary:10000..50000)