class AddRdigestToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :remember_digest, :string
  end
end
