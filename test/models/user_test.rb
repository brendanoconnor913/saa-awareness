require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user needs password" do
    user = User.new(name:"brendan")
    assert_not user.valid?
  end
  

end