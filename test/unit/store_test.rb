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

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
