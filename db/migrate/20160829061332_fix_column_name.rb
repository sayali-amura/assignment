class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :employees, :Salary, :salary
  end
end
