require 'test_helper'

class PaginadiControllerTest < ActionController::TestCase
  test "should get diezmo" do
    get :diezmo
    assert_response :success
  end

end
