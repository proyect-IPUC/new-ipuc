require 'test_helper'

class OtrosingsControllerTest < ActionController::TestCase
  setup do
    @otrosing = otrosings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:otrosings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create otrosing" do
    assert_difference('Otrosing.count') do
      post :create, otrosing: { actividad: @otrosing.actividad, dia: @otrosing.dia, valor: @otrosing.valor }
    end

    assert_redirected_to otrosing_path(assigns(:otrosing))
  end

  test "should show otrosing" do
    get :show, id: @otrosing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @otrosing
    assert_response :success
  end

  test "should update otrosing" do
    patch :update, id: @otrosing, otrosing: { actividad: @otrosing.actividad, dia: @otrosing.dia, valor: @otrosing.valor }
    assert_redirected_to otrosing_path(assigns(:otrosing))
  end

  test "should destroy otrosing" do
    assert_difference('Otrosing.count', -1) do
      delete :destroy, id: @otrosing
    end

    assert_redirected_to otrosings_path
  end
end
