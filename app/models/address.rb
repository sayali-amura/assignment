class Address < ActiveRecord::Base
	belongs_to :resource, polymorphic: true
	validates_presence_of :city
end
