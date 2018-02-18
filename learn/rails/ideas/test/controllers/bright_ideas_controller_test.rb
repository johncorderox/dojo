require 'test_helper'

class BrightIdeasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
