class FixingIds < ActiveRecord::Migration
   change_column(:stores, :storeid, :integer)
   change_column(:items, :itemid, :integer)
   change_column(:users, :userid, :integer)
end
