class CreateTags < ActiveRecord::Migration
    create_table :tags do |t|
      t.string :name
      t.references :post

      t.timestamps
    end
end
