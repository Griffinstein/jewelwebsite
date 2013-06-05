# == Schema Information
#
# Table name: stores
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  item_id    :integer
#  user_id    :integer
#  comment_id :integer
#  created_at :datetime
#  updated_at :datetime
#  storeid    :integer
#

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
