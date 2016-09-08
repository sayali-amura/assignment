class AddEmployeeIdToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :employee_id, :integer
  end
end
