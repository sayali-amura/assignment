class ChangePhoneType < ActiveRecord::Migration
  def change
  	change_column :employees, :phone, :string
  end
end
