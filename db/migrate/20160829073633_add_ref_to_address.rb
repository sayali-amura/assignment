class AddRefToAddress < ActiveRecord::Migration
  def change
  	add_reference :addresses, :company, foreign_key: true
  	add_reference :addresses, :employee, foreign_key: true
  end
end
