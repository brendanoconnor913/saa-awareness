require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "proper layout" do
    get root_path
    assert_template "posts/feed"
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", about_path, count: 1
    assert_select "a[href=?]", help_path, count: 1
    assert_select "a[href=?]", contact_path, count: 1
    assert_select "a[href=?]", submit_story_path, count: 1
  end
end
