class AddDigestToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :password_digest, :string
  end
end
