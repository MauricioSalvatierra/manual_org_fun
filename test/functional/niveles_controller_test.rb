require 'test_helper'

class NivelesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:niveles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nivel" do
    assert_difference('Nivel.count') do
      post :create, :nivel => { }
    end

    assert_redirected_to nivel_path(assigns(:nivel))
  end

  test "should show nivel" do
    get :show, :id => niveles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => niveles(:one).to_param
    assert_response :success
  end

  test "should update nivel" do
    put :update, :id => niveles(:one).to_param, :nivel => { }
    assert_redirected_to nivel_path(assigns(:nivel))
  end

  test "should destroy nivel" do
    assert_difference('Nivel.count', -1) do
      delete :destroy, :id => niveles(:one).to_param
    end

    assert_redirected_to niveles_path
  end
end
