require 'test_helper'

class FormulariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formularios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formulario" do
    assert_difference('Formulario.count') do
      post :create, :formulario => { }
    end

    assert_redirected_to formulario_path(assigns(:formulario))
  end

  test "should show formulario" do
    get :show, :id => formularios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => formularios(:one).to_param
    assert_response :success
  end

  test "should update formulario" do
    put :update, :id => formularios(:one).to_param, :formulario => { }
    assert_redirected_to formulario_path(assigns(:formulario))
  end

  test "should destroy formulario" do
    assert_difference('Formulario.count', -1) do
      delete :destroy, :id => formularios(:one).to_param
    end

    assert_redirected_to formularios_path
  end
end
