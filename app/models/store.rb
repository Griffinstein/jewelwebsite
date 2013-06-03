class Store < ActiveRecord::Base
  has_many :items,   :dependent => :destroy
  has_many :users,   :dependent => :destroy
  has_one :address,   :dependent => :destroy
  has_many :reviews, :dependent => :destroy
  
  validates :name,        :presence => true
  #validates :item_id,     :presence => true
  #validates :user_id,     :presence => true
  #validates :address_id,  :presence => true
  
end
