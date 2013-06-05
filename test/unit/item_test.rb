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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
