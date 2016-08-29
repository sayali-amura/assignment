class RemoveColumnFromEmployees < ActiveRecord::Migration
  def change
  	remove_column :employees, :location
  end
end
