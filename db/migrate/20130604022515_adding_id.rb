class AddingId < ActiveRecord::Migration
  add_column(:items, :store_id, :integer)
  add_index :items, :store_id, :name => 'item_index'
end
