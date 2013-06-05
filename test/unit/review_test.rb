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

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
