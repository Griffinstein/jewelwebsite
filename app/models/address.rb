# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  town       :string(255)
#  street     :string(255)
#  suburb     :string(255)
#  state      :string(255)
#  postcode   :string(255)
#  created_at :datetime
#  updated_at :datetime
#  store_id   :integer
#

class Address < ActiveRecord::Base
  #validates :town,    :presence => true
  #validates :street,  :presence => true
  #validates :suburb,  :presence => true
  #validates :state,   :presence => true
  #validates :postcode,:presence => true
  
  belongs_to :store
end
