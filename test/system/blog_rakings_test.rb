require "application_system_test_case"

class BlogRakingsTest < ApplicationSystemTestCase
  setup do
    @blog_raking = blog_rakings(:one)
  end

  test "visiting the index" do
    visit blog_rakings_url
    assert_selector "h1", text: "Blog Rakings"
  end

  test "creating a Blog raking" do
    visit blog_rakings_url
    click_on "New Blog Raking"

    fill_in "Blog", with: @blog_raking.blog_id
    fill_in "Raking", with: @blog_raking.raking
    fill_in "User", with: @blog_raking.user_id
    click_on "Create Blog raking"

    assert_text "Blog raking was successfully created"
    click_on "Back"
  end

  test "updating a Blog raking" do
    visit blog_rakings_url
    click_on "Edit", match: :first

    fill_in "Blog", with: @blog_raking.blog_id
    fill_in "Raking", with: @blog_raking.raking
    fill_in "User", with: @blog_raking.user_id
    click_on "Update Blog raking"

    assert_text "Blog raking was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog raking" do
    visit blog_rakings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog raking was successfully destroyed"
  end
end
