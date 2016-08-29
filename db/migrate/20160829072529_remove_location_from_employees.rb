class RemoveLocationFromEmployees < ActiveRecord::Migration
  def change
  	remove_column :employees, :location
  end
end
