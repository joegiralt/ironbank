require 'test_helper'

class AppEnvGsControllerTest < ActionController::TestCase
  setup do
    @app_env_g = app_env_gs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_env_gs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_env_g" do
    assert_difference('AppEnvG.count') do
      post :create, app_env_g: { name: @app_env_g.name, slug: @app_env_g.slug }
    end

    assert_redirected_to app_env_g_path(assigns(:app_env_g))
  end

  test "should show app_env_g" do
    get :show, id: @app_env_g
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_env_g
    assert_response :success
  end

  test "should update app_env_g" do
    patch :update, id: @app_env_g, app_env_g: { name: @app_env_g.name, slug: @app_env_g.slug }
    assert_redirected_to app_env_g_path(assigns(:app_env_g))
  end

  test "should destroy app_env_g" do
    assert_difference('AppEnvG.count', -1) do
      delete :destroy, id: @app_env_g
    end

    assert_redirected_to app_env_gs_path
  end
end
