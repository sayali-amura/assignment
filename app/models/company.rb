class Company < ActiveRecord::Base
	has_many :employees
	has_many :addresses, as: :resource
	accepts_nested_attributes_for :addresses
end
