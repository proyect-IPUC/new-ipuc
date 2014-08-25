require 'test_helper'

class PaginainControllerTest < ActionController::TestCase
  test "should get ingresos" do
    get :ingresos
    assert_response :success
  end

end
