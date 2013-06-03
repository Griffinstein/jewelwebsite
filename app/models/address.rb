class Address < ActiveRecord::Base
  #validates :town,    :presence => true
  #validates :street,  :presence => true
  #validates :suburb,  :presence => true
  #validates :state,   :presence => true
  #validates :postcode,:presence => true
  
  belongs_to :store
end
