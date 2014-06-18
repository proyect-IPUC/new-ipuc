require 'test_helper'

class ModulosControllerTest < ActionController::TestCase
  test "should get junta" do
    get :junta
    assert_response :success
  end

  test "should get jovenes" do
    get :jovenes
    assert_response :success
  end

  test "should get damas" do
    get :damas
    assert_response :success
  end

  test "should get esc_dom" do
    get :esc_dom
    assert_response :success
  end

  test "should get vigilancia" do
    get :vigilancia
    assert_response :success
  end

  test "should get aseo" do
    get :aseo
    assert_response :success
  end

  test "should get intercepcion" do
    get :intercepcion
    assert_response :success
  end

  test "should get recepcion" do
    get :recepcion
    assert_response :success
  end

  test "should get misiones" do
    get :misiones
    assert_response :success
  end

  test "should get cafeteria" do
    get :cafeteria
    assert_response :success
  end

  test "should get alabanza" do
    get :alabanza
    assert_response :success
  end

  test "should get renuevos" do
    get :renuevos
    assert_response :success
  end

  test "should get evangelismo" do
    get :evangelismo
    assert_response :success
  end

  test "should get publicidad" do
    get :publicidad
    assert_response :success
  end

  test "should get audiovisuales" do
    get :audiovisuales
    assert_response :success
  end

  test "should get protemplo" do
    get :protemplo
    assert_response :success
  end

end
