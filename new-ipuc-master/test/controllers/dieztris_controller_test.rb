require 'test_helper'

class DieztrisControllerTest < ActionController::TestCase
  setup do
    @dieztri = dieztris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dieztris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dieztri" do
    assert_difference('Dieztri.count') do
      post :create, dieztri: { dia: @dieztri.dia, valor: @dieztri.valor }
    end

    assert_redirected_to dieztri_path(assigns(:dieztri))
  end

  test "should show dieztri" do
    get :show, id: @dieztri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dieztri
    assert_response :success
  end

  test "should update dieztri" do
    patch :update, id: @dieztri, dieztri: { dia: @dieztri.dia, valor: @dieztri.valor }
    assert_redirected_to dieztri_path(assigns(:dieztri))
  end

  test "should destroy dieztri" do
    assert_difference('Dieztri.count', -1) do
      delete :destroy, id: @dieztri
    end

    assert_redirected_to dieztris_path
  end
end
