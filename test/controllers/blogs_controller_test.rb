require "test_helper"

class BlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog = blogs(:one)
  end

  test "should get index" do
    get blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_url
    assert_response :success
  end

  test "should create blog" do
    assert_difference("Blog.count") do
      post blogs_url, params: { blog: { data: @blog.data, image: @blog.image, image_1: @blog.image_1, image_2: @blog.image_2, paragaph_1: @blog.paragaph_1, paragraph_2: @blog.paragraph_2, paragraph_3: @blog.paragraph_3, title: @blog.title } }
    end

    assert_redirected_to blog_url(Blog.last)
  end

  test "should show blog" do
    get blog_url(@blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_url(@blog)
    assert_response :success
  end

  test "should update blog" do
    patch blog_url(@blog), params: { blog: { data: @blog.data, image: @blog.image, image_1: @blog.image_1, image_2: @blog.image_2, paragaph_1: @blog.paragaph_1, paragraph_2: @blog.paragraph_2, paragraph_3: @blog.paragraph_3, title: @blog.title } }
    assert_redirected_to blog_url(@blog)
  end

  test "should destroy blog" do
    assert_difference("Blog.count", -1) do
      delete blog_url(@blog)
    end

    assert_redirected_to blogs_url
  end
end
