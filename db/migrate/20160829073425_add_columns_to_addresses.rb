class AddColumnsToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :buiding_no, :string
    add_column :addresses, :city, :string
  end
end
