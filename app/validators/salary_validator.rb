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