class Employee < ActiveRecord::Base

	belongs_to :company
	has_secure_password
	has_one :address, as: :resource
	has_many :roles
	validates :password,confirmation:true
	validates :password_confirmation, presence:true
	validates :email, :phone, uniqueness:{scope: :company}
	validates :name, format: { with: /[[:alpha:]]+?[[a-z][A-z] ]+/,
	 message: "Only letters and spaces allowed." }
	validates :email, format: {with: /\A([^@\s]+)@(([a-z]+\.)+[a-z]{2,})\z/i, 
	message: "Email format not valid."}
	validates :phone, format: { with: /[0-9]{10}/, message: "Enter valid mobile number."}
	# validates :salary, presence: true, salary: true
	accepts_nested_attributes_for :address, allow_destroy: true
=begin	def self.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
		BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end
	def self.new_token
		SecureRandom.urlsafe_base64
	end
	def remember
		self.remember_token = self.new_token
		update_attribute(:remember_digest, self.digest(remember_token))
	end
=end
end
#Employee.order(salary: :desc).limit(5)
#Employee.joins(:address).where("addresses.city":  'Pune')
#Employee.joins(:address).select(:name, :email, 'addresses.city').to_json(include: :address)	
#Employee.where(salary:10000..50000)
