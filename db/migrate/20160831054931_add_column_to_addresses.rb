class AddColumnToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :resource_id, :integer
    add_column :addresses, :resource_type, :string
  end
end
