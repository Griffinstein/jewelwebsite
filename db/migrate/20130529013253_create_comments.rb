class CreateComments < ActiveRecord::Migration
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post

      t.timestamps
    end
    
    add_index :comments, :post_id, :name => 'comment_index'
end
