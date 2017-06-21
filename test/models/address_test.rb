require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  test "should not save address without street" do
  	address = Address.new
  	assert_not address.save
	end
end
