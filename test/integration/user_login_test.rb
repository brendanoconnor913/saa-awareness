require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  test "login with invalid info" do
    get login_path
    assert_template "sessions/new"
    post login_path, session: {name: "aaa", password: "aaa"}
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

end
