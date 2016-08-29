class AddSalaryToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :Salary, :integer
    add_column :employees, :Designation, :string
  end
end
