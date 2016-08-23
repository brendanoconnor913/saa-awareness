require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "fail to get index when logged out" do
    get :index
    assert_response :redirect
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: {title: @post.title, city: @post.city, content: @post.content, country: @post.country, created_at: @post.created_at, state: @post.state, updated_at: @post.updated_at }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "shouldn't get edit unless logged in" do
    get :edit, id: @post
    assert_response :redirect
  end

  test "shouldn't update post when logged out" do
    patch :update, id: @post, post: { city: @post.city, content: @post.content, country: @post.country, created_at: @post.created_at, state: @post.state, updated_at: @post.updated_at }
    assert_redirected_to login_path
  end

  test "shouldn't destroy post when logged out" do
    assert_difference('Post.count', 0) do
      delete :destroy, id: @post
    end

    assert_redirected_to login_path
  end
  
  
end
