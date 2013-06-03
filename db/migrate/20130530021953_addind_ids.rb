class AddindIds < ActiveRecord::Migration
   add_column(:stores, :storeid, :string)
   add_column(:items, :itemid, :string)
   add_column(:users, :userid, :string)
end
