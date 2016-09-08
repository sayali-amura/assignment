class AddIndexToAddresses < ActiveRecord::Migration
  def change
  end
  add_index :addresses, :resource_id
end
