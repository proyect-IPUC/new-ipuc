require 'test_helper'

class DiezmotrisControllerTest < ActionController::TestCase
  setup do
    @diezmotri = diezmotris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diezmotris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diezmotri" do
    assert_difference('Diezmotri.count') do
      post :create, diezmotri: { trimestre: @diezmotri.trimestre, valor: @diezmotri.valor }
    end

    assert_redirected_to diezmotri_path(assigns(:diezmotri))
  end

  test "should show diezmotri" do
    get :show, id: @diezmotri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diezmotri
    assert_response :success
  end

  test "should update diezmotri" do
    patch :update, id: @diezmotri, diezmotri: { trimestre: @diezmotri.trimestre, valor: @diezmotri.valor }
    assert_redirected_to diezmotri_path(assigns(:diezmotri))
  end

  test "should destroy diezmotri" do
    assert_difference('Diezmotri.count', -1) do
      delete :destroy, id: @diezmotri
    end

    assert_redirected_to diezmotris_path
  end
end
