class Company < ActiveRecord::Base
	has_many :employees
	has_one :address

end
