class CreateUsers < ActiveRecord::Migration
    create_table :users do |t|
      t.string :name
      t.string :password

      t.timestamps
    end
end
