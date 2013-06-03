class Item < ActiveRecord::Base
  validates :name,        :presence => true
  validates :price,       :presence => true
  validates :style,       :presence => true
  validates :description, :presence => true
  validates :occassion,   :presence => true
  validates :image,       :presence => true
  
  belongs_to :store
end
