require 'test_helper'

class DiezmoanualsControllerTest < ActionController::TestCase
  setup do
    @diezmoanual = diezmoanuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diezmoanuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diezmoanual" do
    assert_difference('Diezmoanual.count') do
      post :create, diezmoanual: { año: @diezmoanual.año, valor: @diezmoanual.valor }
    end

    assert_redirected_to diezmoanual_path(assigns(:diezmoanual))
  end

  test "should show diezmoanual" do
    get :show, id: @diezmoanual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diezmoanual
    assert_response :success
  end

  test "should update diezmoanual" do
    patch :update, id: @diezmoanual, diezmoanual: { año: @diezmoanual.año, valor: @diezmoanual.valor }
    assert_redirected_to diezmoanual_path(assigns(:diezmoanual))
  end

  test "should destroy diezmoanual" do
    assert_difference('Diezmoanual.count', -1) do
      delete :destroy, id: @diezmoanual
    end

    assert_redirected_to diezmoanuals_path
  end
end
