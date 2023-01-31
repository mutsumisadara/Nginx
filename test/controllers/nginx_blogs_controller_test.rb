require "test_helper"

class NginxBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nginx_blog = nginx_blogs(:one)
  end

  test "should get index" do
    get nginx_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_nginx_blog_url
    assert_response :success
  end

  test "should create nginx_blog" do
    assert_difference('NginxBlog.count') do
      post nginx_blogs_url, params: { nginx_blog: { content: @nginx_blog.content, title: @nginx_blog.title } }
    end

    assert_redirected_to nginx_blog_url(NginxBlog.last)
  end

  test "should show nginx_blog" do
    get nginx_blog_url(@nginx_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_nginx_blog_url(@nginx_blog)
    assert_response :success
  end

  test "should update nginx_blog" do
    patch nginx_blog_url(@nginx_blog), params: { nginx_blog: { content: @nginx_blog.content, title: @nginx_blog.title } }
    assert_redirected_to nginx_blog_url(@nginx_blog)
  end

  test "should destroy nginx_blog" do
    assert_difference('NginxBlog.count', -1) do
      delete nginx_blog_url(@nginx_blog)
    end

    assert_redirected_to nginx_blogs_url
  end
end
