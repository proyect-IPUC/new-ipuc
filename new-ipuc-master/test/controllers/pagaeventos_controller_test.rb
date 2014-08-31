require 'test_helper'

class PagaeventosControllerTest < ActionController::TestCase
  setup do
    @pagaevento = pagaeventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pagaeventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pagaevento" do
    assert_difference('Pagaevento.count') do
      post :create, pagaevento: { dia: @pagaevento.dia, evento: @pagaevento.evento, valor: @pagaevento.valor }
    end

    assert_redirected_to pagaevento_path(assigns(:pagaevento))
  end

  test "should show pagaevento" do
    get :show, id: @pagaevento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pagaevento
    assert_response :success
  end

  test "should update pagaevento" do
    patch :update, id: @pagaevento, pagaevento: { dia: @pagaevento.dia, evento: @pagaevento.evento, valor: @pagaevento.valor }
    assert_redirected_to pagaevento_path(assigns(:pagaevento))
  end

  test "should destroy pagaevento" do
    assert_difference('Pagaevento.count', -1) do
      delete :destroy, id: @pagaevento
    end

    assert_redirected_to pagaeventos_path
  end
end
