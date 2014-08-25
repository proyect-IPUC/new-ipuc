require 'test_helper'

class PaginaegControllerTest < ActionController::TestCase
  test "should get egresos" do
    get :egresos
    assert_response :success
  end

end
