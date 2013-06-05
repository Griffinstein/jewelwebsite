# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  price       :integer
#  style       :string(255)
#  description :text
#  occassion   :string(255)
#  image       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  itemid      :integer
#  store_id    :integer
#

class Item < ActiveRecord::Base
  attr_accessible :name, :price, :style, :description, :occassion, :image
  
  validates :name,        :presence => true
  validates :price,       :presence => true
  validates :style,       :presence => true
  validates :description, :presence => true
  validates :occassion,   :presence => true
  validates :image,       :presence => true
  
  belongs_to :store
end
