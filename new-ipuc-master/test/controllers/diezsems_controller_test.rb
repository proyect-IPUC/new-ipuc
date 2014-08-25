require 'test_helper'

class DiezsemsControllerTest < ActionController::TestCase
  setup do
    @diezsem = diezsems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diezsems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diezsem" do
    assert_difference('Diezsem.count') do
      post :create, diezsem: { dia: @diezsem.dia, valor: @diezsem.valor }
    end

    assert_redirected_to diezsem_path(assigns(:diezsem))
  end

  test "should show diezsem" do
    get :show, id: @diezsem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diezsem
    assert_response :success
  end

  test "should update diezsem" do
    patch :update, id: @diezsem, diezsem: { dia: @diezsem.dia, valor: @diezsem.valor }
    assert_redirected_to diezsem_path(assigns(:diezsem))
  end

  test "should destroy diezsem" do
    assert_difference('Diezsem.count', -1) do
      delete :destroy, id: @diezsem
    end

    assert_redirected_to diezsems_path
  end
end
