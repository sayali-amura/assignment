class Removeadressfromcompany < ActiveRecord::Migration
  def change
  	remove_column :companies,:address,:string
  end
end
