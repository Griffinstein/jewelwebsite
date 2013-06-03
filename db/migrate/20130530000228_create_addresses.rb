class CreateAddresses < ActiveRecord::Migration
  
    create_table :addresses do |t|
      t.string :town
      t.string :street
      t.string :suburb
      t.string :state
      t.string :postcode

      t.timestamps
    end
  
end
