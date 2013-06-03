class CreatingItemIndex < ActiveRecord::Migration
  change_column(:items, :price, :integer)
  
  add_index :items, :occassion, :name => 'occasion_index'
  add_index :items, :style, :name => 'style_index'
  add_index :items, :price, :name => 'price_index'
end
