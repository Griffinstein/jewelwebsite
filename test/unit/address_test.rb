# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  town       :string(255)
#  street     :string(255)
#  suburb     :string(255)
#  state      :string(255)
#  postcode   :string(255)
#  created_at :datetime
#  updated_at :datetime
#  store_id   :integer
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
