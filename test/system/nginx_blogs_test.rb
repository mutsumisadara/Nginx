require "application_system_test_case"

class NginxBlogsTest < ApplicationSystemTestCase
  setup do
    @nginx_blog = nginx_blogs(:one)
  end

  test "visiting the index" do
    visit nginx_blogs_url
    assert_selector "h1", text: "Nginx Blogs"
  end

  test "creating a Nginx blog" do
    visit nginx_blogs_url
    click_on "New Nginx Blog"

    fill_in "Content", with: @nginx_blog.content
    fill_in "Title", with: @nginx_blog.title
    click_on "Create Nginx blog"

    assert_text "Nginx blog was successfully created"
    click_on "Back"
  end

  test "updating a Nginx blog" do
    visit nginx_blogs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @nginx_blog.content
    fill_in "Title", with: @nginx_blog.title
    click_on "Update Nginx blog"

    assert_text "Nginx blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Nginx blog" do
    visit nginx_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nginx blog was successfully destroyed"
  end
end
