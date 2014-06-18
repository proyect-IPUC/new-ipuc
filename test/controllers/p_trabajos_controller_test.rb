require 'test_helper'

class PTrabajosControllerTest < ActionController::TestCase
  setup do
    @p_trabajo = p_trabajos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_trabajos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_trabajo" do
    assert_difference('PTrabajo.count') do
      post :create, p_trabajo: { Aprobada?: @p_trabajo.Aprobada?, DescripcionPlan: @p_trabajo.DescripcionPlan, NombrePlanTrabajo: @p_trabajo.NombrePlanTrabajo, Observacion: @p_trabajo.Observacion, fechaPlanTrabajo: @p_trabajo.fechaPlanTrabajo }
    end

    assert_redirected_to p_trabajo_path(assigns(:p_trabajo))
  end

  test "should show p_trabajo" do
    get :show, id: @p_trabajo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_trabajo
    assert_response :success
  end

  test "should update p_trabajo" do
    patch :update, id: @p_trabajo, p_trabajo: { Aprobada?: @p_trabajo.Aprobada?, DescripcionPlan: @p_trabajo.DescripcionPlan, NombrePlanTrabajo: @p_trabajo.NombrePlanTrabajo, Observacion: @p_trabajo.Observacion, fechaPlanTrabajo: @p_trabajo.fechaPlanTrabajo }
    assert_redirected_to p_trabajo_path(assigns(:p_trabajo))
  end

  test "should destroy p_trabajo" do
    assert_difference('PTrabajo.count', -1) do
      delete :destroy, id: @p_trabajo
    end

    assert_redirected_to p_trabajos_path
  end
end
