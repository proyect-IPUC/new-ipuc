require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get biblia" do
    get :biblia
    assert_response :success
  end

end
