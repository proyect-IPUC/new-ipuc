require 'test_helper'

class OfrendanualsControllerTest < ActionController::TestCase
  setup do
    @ofrendanual = ofrendanuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ofrendanuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ofrendanual" do
    assert_difference('Ofrendanual.count') do
      post :create, ofrendanual: { dia: @ofrendanual.dia, valor: @ofrendanual.valor }
    end

    assert_redirected_to ofrendanual_path(assigns(:ofrendanual))
  end

  test "should show ofrendanual" do
    get :show, id: @ofrendanual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ofrendanual
    assert_response :success
  end

  test "should update ofrendanual" do
    patch :update, id: @ofrendanual, ofrendanual: { dia: @ofrendanual.dia, valor: @ofrendanual.valor }
    assert_redirected_to ofrendanual_path(assigns(:ofrendanual))
  end

  test "should destroy ofrendanual" do
    assert_difference('Ofrendanual.count', -1) do
      delete :destroy, id: @ofrendanual
    end

    assert_redirected_to ofrendanuals_path
  end
end
