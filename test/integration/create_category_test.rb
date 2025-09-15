require "test_helper"

class CreateCategoryTest < ActionDispatch::IntegrationTest
  setup do
    @admin_user = User.create(username: "Admin", email: "admin@example.org", password: "adminadmin", admin: true)
    sign_in_as(@admin_user)
  end

  test "get new category form and create category" do
    get "/categories/new"
    assert_response :success
    assert_difference("Category.count", 1) do
      post categories_url, params: { category: { name: "Travel" } }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "Travel", @response.body
  end

  test "get new category form and reject invalid category" do
    get "/categories/new"
    assert_response :success
    assert_no_difference "Category.count" do
      post categories_url, params: { category: { name: " " } }
    end
    assert_match "errors", @response.body
    assert_dom "div.alert.alert-danger"
    assert_dom "h4.alert-heading"
  end
end
