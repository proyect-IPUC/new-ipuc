require 'test_helper'

class MembreciaControllerTest < ActionController::TestCase
  setup do
    @membrecium = membrecia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:membrecia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create membrecium" do
    assert_difference('Membrecium.count') do
      post :create, membrecium: { apellidos: @membrecium.apellidos, comentarios: @membrecium.comentarios, direccion: @membrecium.direccion, email: @membrecium.email, fecha: @membrecium.fecha, nombre: @membrecium.nombre, recibioEspiritu: @membrecium.recibioEspiritu, telefono: @membrecium.telefono }
    end

    assert_redirected_to membrecium_path(assigns(:membrecium))
  end

  test "should show membrecium" do
    get :show, id: @membrecium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @membrecium
    assert_response :success
  end

  test "should update membrecium" do
    patch :update, id: @membrecium, membrecium: { apellidos: @membrecium.apellidos, comentarios: @membrecium.comentarios, direccion: @membrecium.direccion, email: @membrecium.email, fecha: @membrecium.fecha, nombre: @membrecium.nombre, recibioEspiritu: @membrecium.recibioEspiritu, telefono: @membrecium.telefono }
    assert_redirected_to membrecium_path(assigns(:membrecium))
  end

  test "should destroy membrecium" do
    assert_difference('Membrecium.count', -1) do
      delete :destroy, id: @membrecium
    end

    assert_redirected_to membrecia_path
  end
end
