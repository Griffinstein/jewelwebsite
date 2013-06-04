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
