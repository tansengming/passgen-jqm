require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "GET :show" do
    get :show
    assert_response :success
  end
end