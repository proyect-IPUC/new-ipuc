require 'test_helper'

class DiezmosemsControllerTest < ActionController::TestCase
  setup do
    @diezmosem = diezmosems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diezmosems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diezmosem" do
    assert_difference('Diezmosem.count') do
      post :create, diezmosem: { semana: @diezmosem.semana, valor: @diezmosem.valor }
    end

    assert_redirected_to diezmosem_path(assigns(:diezmosem))
  end

  test "should show diezmosem" do
    get :show, id: @diezmosem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diezmosem
    assert_response :success
  end

  test "should update diezmosem" do
    patch :update, id: @diezmosem, diezmosem: { semana: @diezmosem.semana, valor: @diezmosem.valor }
    assert_redirected_to diezmosem_path(assigns(:diezmosem))
  end

  test "should destroy diezmosem" do
    assert_difference('Diezmosem.count', -1) do
      delete :destroy, id: @diezmosem
    end

    assert_redirected_to diezmosems_path
  end
end
