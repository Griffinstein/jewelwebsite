class CreateReviews < ActiveRecord::Migration
    create_table :reviews do |t|
      t.string :reviewer
      t.integer :rating
      t.text :body
      t.integer :post_id

      t.timestamps
    end
end
