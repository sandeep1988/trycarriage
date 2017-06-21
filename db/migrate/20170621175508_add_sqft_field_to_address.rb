class AddSqftFieldToAddress < ActiveRecord::Migration
  def change
  	add_column :addresses, :sq_ft, :integer
  	rename_column :addresses, :type, :address_type
  end
end
