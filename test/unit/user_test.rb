# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  password   :string(255)
#  created_at :datetime
#  updated_at :datetime
#  userid     :integer
#  email      :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
