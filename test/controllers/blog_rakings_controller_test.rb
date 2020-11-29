require 'test_helper'

class BlogRakingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_raking = blog_rakings(:one)
  end

  test "should get index" do
    get blog_rakings_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_raking_url
    assert_response :success
  end

  test "should create blog_raking" do
    assert_difference('BlogRaking.count') do
      post blog_rakings_url, params: { blog_raking: { blog_id: @blog_raking.blog_id, raking: @blog_raking.raking, user_id: @blog_raking.user_id } }
    end

    assert_redirected_to blog_raking_url(BlogRaking.last)
  end

  test "should show blog_raking" do
    get blog_raking_url(@blog_raking)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_raking_url(@blog_raking)
    assert_response :success
  end

  test "should update blog_raking" do
    patch blog_raking_url(@blog_raking), params: { blog_raking: { blog_id: @blog_raking.blog_id, raking: @blog_raking.raking, user_id: @blog_raking.user_id } }
    assert_redirected_to blog_raking_url(@blog_raking)
  end

  test "should destroy blog_raking" do
    assert_difference('BlogRaking.count', -1) do
      delete blog_raking_url(@blog_raking)
    end

    assert_redirected_to blog_rakings_url
  end
end
