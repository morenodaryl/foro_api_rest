require 'test_helper'

class ContactosControllerTest < ActionController::TestCase
  setup do
    @contacto = contactos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactos)
  end

  test "should create contacto" do
    assert_difference('Contacto.count') do
      post :create, contacto: { correo: @contacto.correo, edad: @contacto.edad, nombre: @contacto.nombre }
    end

    assert_response 201
  end

  test "should show contacto" do
    get :show, id: @contacto
    assert_response :success
  end

  test "should update contacto" do
    put :update, id: @contacto, contacto: { correo: @contacto.correo, edad: @contacto.edad, nombre: @contacto.nombre }
    assert_response 204
  end

  test "should destroy contacto" do
    assert_difference('Contacto.count', -1) do
      delete :destroy, id: @contacto
    end

    assert_response 204
  end
end
