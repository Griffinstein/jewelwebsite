class TestComments < ActiveRecord::Migration
   remove_column(:stores, :address_id)
end
