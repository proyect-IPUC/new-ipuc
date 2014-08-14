require 'test_helper'

class MiembrsControllerTest < ActionController::TestCase
  setup do
    @miembr = miembrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miembrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miembr" do
    assert_difference('Miembr.count') do
      post :create, miembr: { TelFijo: @miembr.TelFijo, apellido: @miembr.apellido, cargo: @miembr.cargo, celular: @miembr.celular, nombre: @miembr.nombre }
    end

    assert_redirected_to miembr_path(assigns(:miembr))
  end

  test "should show miembr" do
    get :show, id: @miembr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miembr
    assert_response :success
  end

  test "should update miembr" do
    patch :update, id: @miembr, miembr: { TelFijo: @miembr.TelFijo, apellido: @miembr.apellido, cargo: @miembr.cargo, celular: @miembr.celular, nombre: @miembr.nombre }
    assert_redirected_to miembr_path(assigns(:miembr))
  end

  test "should destroy miembr" do
    assert_difference('Miembr.count', -1) do
      delete :destroy, id: @miembr
    end

    assert_redirected_to miembrs_path
  end
end
