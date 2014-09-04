require 'test_helper'

class DiezmodiaControllerTest < ActionController::TestCase
  setup do
    @diezmodium = diezmodia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diezmodia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diezmodium" do
    assert_difference('Diezmodium.count') do
      post :create, diezmodium: { dia: @diezmodium.dia, valor: @diezmodium.valor }
    end

    assert_redirected_to diezmodium_path(assigns(:diezmodium))
  end

  test "should show diezmodium" do
    get :show, id: @diezmodium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diezmodium
    assert_response :success
  end

  test "should update diezmodium" do
    patch :update, id: @diezmodium, diezmodium: { dia: @diezmodium.dia, valor: @diezmodium.valor }
    assert_redirected_to diezmodium_path(assigns(:diezmodium))
  end

  test "should destroy diezmodium" do
    assert_difference('Diezmodium.count', -1) do
      delete :destroy, id: @diezmodium
    end

    assert_redirected_to diezmodia_path
  end
end
