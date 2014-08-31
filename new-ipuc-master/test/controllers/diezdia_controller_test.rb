require 'test_helper'

class DiezdiaControllerTest < ActionController::TestCase
  setup do
    @diezdium = diezdia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diezdia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diezdium" do
    assert_difference('Diezdium.count') do
      post :create, diezdium: { dia: @diezdium.dia, valor: @diezdium.valor }
    end

    assert_redirected_to diezdium_path(assigns(:diezdium))
  end

  test "should show diezdium" do
    get :show, id: @diezdium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diezdium
    assert_response :success
  end

  test "should update diezdium" do
    patch :update, id: @diezdium, diezdium: { dia: @diezdium.dia, valor: @diezdium.valor }
    assert_redirected_to diezdium_path(assigns(:diezdium))
  end

  test "should destroy diezdium" do
    assert_difference('Diezdium.count', -1) do
      delete :destroy, id: @diezdium
    end

    assert_redirected_to diezdia_path
  end
end
