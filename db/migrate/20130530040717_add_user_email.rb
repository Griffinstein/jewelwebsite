class AddUserEmail < ActiveRecord::Migration
  add_column(:users, :email, :string)
end
