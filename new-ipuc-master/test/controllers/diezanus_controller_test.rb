require 'test_helper'

class DiezanusControllerTest < ActionController::TestCase
  setup do
    @diezanu = diezanus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diezanus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diezanu" do
    assert_difference('Diezanu.count') do
      post :create, diezanu: { dia: @diezanu.dia, valor: @diezanu.valor }
    end

    assert_redirected_to diezanu_path(assigns(:diezanu))
  end

  test "should show diezanu" do
    get :show, id: @diezanu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diezanu
    assert_response :success
  end

  test "should update diezanu" do
    patch :update, id: @diezanu, diezanu: { dia: @diezanu.dia, valor: @diezanu.valor }
    assert_redirected_to diezanu_path(assigns(:diezanu))
  end

  test "should destroy diezanu" do
    assert_difference('Diezanu.count', -1) do
      delete :destroy, id: @diezanu
    end

    assert_redirected_to diezanus_path
  end
end
