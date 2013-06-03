class CreateItems < ActiveRecord::Migration
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :style
      t.text :description
      t.string :occassion
      t.string :image

      t.timestamps
    end
end
