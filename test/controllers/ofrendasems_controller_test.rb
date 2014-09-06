require 'test_helper'

class OfrendasemsControllerTest < ActionController::TestCase
  setup do
    @ofrendasem = ofrendasems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ofrendasems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ofrendasem" do
    assert_difference('Ofrendasem.count') do
      post :create, ofrendasem: { dia: @ofrendasem.dia, valor: @ofrendasem.valor }
    end

    assert_redirected_to ofrendasem_path(assigns(:ofrendasem))
  end

  test "should show ofrendasem" do
    get :show, id: @ofrendasem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ofrendasem
    assert_response :success
  end

  test "should update ofrendasem" do
    patch :update, id: @ofrendasem, ofrendasem: { dia: @ofrendasem.dia, valor: @ofrendasem.valor }
    assert_redirected_to ofrendasem_path(assigns(:ofrendasem))
  end

  test "should destroy ofrendasem" do
    assert_difference('Ofrendasem.count', -1) do
      delete :destroy, id: @ofrendasem
    end

    assert_redirected_to ofrendasems_path
  end
end
