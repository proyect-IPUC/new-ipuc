require 'test_helper'

class OfrendatrisControllerTest < ActionController::TestCase
  setup do
    @ofrendatri = ofrendatris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ofrendatris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ofrendatri" do
    assert_difference('Ofrendatri.count') do
      post :create, ofrendatri: { trimestre: @ofrendatri.trimestre, valor: @ofrendatri.valor }
    end

    assert_redirected_to ofrendatri_path(assigns(:ofrendatri))
  end

  test "should show ofrendatri" do
    get :show, id: @ofrendatri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ofrendatri
    assert_response :success
  end

  test "should update ofrendatri" do
    patch :update, id: @ofrendatri, ofrendatri: { trimestre: @ofrendatri.trimestre, valor: @ofrendatri.valor }
    assert_redirected_to ofrendatri_path(assigns(:ofrendatri))
  end

  test "should destroy ofrendatri" do
    assert_difference('Ofrendatri.count', -1) do
      delete :destroy, id: @ofrendatri
    end

    assert_redirected_to ofrendatris_path
  end
end
