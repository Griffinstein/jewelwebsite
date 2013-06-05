# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  reviewer   :string(255)
#  rating     :integer
#  body       :text
#  post_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Review < ActiveRecord::Base
    belongs_to :store
    
    validates :reviewer,  :presence => true
    validates :rating,    :presence => true
    validates :body,      :presence => true
    validates :post_id,   :presence => true
end
