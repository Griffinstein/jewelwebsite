class CreatePosts < ActiveRecord::Migration
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :content
 
      t.timestamps
  end
end