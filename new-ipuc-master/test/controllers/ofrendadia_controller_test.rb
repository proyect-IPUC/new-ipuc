require 'test_helper'

class OfrendadiaControllerTest < ActionController::TestCase
  setup do
    @ofrendadium = ofrendadia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ofrendadia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ofrendadium" do
    assert_difference('Ofrendadium.count') do
      post :create, ofrendadium: { dia: @ofrendadium.dia, valor: @ofrendadium.valor }
    end

    assert_redirected_to ofrendadium_path(assigns(:ofrendadium))
  end

  test "should show ofrendadium" do
    get :show, id: @ofrendadium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ofrendadium
    assert_response :success
  end

  test "should update ofrendadium" do
    patch :update, id: @ofrendadium, ofrendadium: { dia: @ofrendadium.dia, valor: @ofrendadium.valor }
    assert_redirected_to ofrendadium_path(assigns(:ofrendadium))
  end

  test "should destroy ofrendadium" do
    assert_difference('Ofrendadium.count', -1) do
      delete :destroy, id: @ofrendadium
    end

    assert_redirected_to ofrendadia_path
  end
end
