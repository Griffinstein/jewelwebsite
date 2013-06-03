class FixingAddress < ActiveRecord::Migration
   add_column(:addresses, :store_id, :integer)   
   add_index :addresses, :store_id, :name => 'address_index'
end
