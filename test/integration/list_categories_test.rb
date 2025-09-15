require "test_helper"

class ListCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "Sports")
    @category2 = Category.create(name: "Travel")
  end

  test "should list categories and get category show page" do
    get "/categories"
    assert_dom "a[href=?]", category_path(@category), text: "Sports"
    assert_dom "a[href=?]", category_path(@category2), text: "Travel"
  end
end
