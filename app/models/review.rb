class Review < ActiveRecord::Base
    belongs_to :store
    
    validates :reviewer,  :presence => true
    validates :rating,    :presence => true
    validates :body,      :presence => true
    validates :post_id,   :presence => true
end
