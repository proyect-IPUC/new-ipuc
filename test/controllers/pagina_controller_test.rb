require 'test_helper'

class PaginaControllerTest < ActionController::TestCase
  test "should get ofrenda" do
    get :ofrenda
    assert_response :success
  end

end
