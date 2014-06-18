require 'test_helper'

class DirectivasControllerTest < ActionController::TestCase
  setup do
    @directiva = directivas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directivas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create directiva" do
    assert_difference('Directiva.count') do
      post :create, directiva: { descripcion: @directiva.descripcion, nombre: @directiva.nombre }
    end

    assert_redirected_to directiva_path(assigns(:directiva))
  end

  test "should show directiva" do
    get :show, id: @directiva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @directiva
    assert_response :success
  end

  test "should update directiva" do
    patch :update, id: @directiva, directiva: { descripcion: @directiva.descripcion, nombre: @directiva.nombre }
    assert_redirected_to directiva_path(assigns(:directiva))
  end

  test "should destroy directiva" do
    assert_difference('Directiva.count', -1) do
      delete :destroy, id: @directiva
    end

    assert_redirected_to directivas_path
  end
end
