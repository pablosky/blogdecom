require 'test_helper'

class AportesControllerTest < ActionController::TestCase
  setup do
    @aporte = aportes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aportes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aporte" do
    assert_difference('Aporte.count') do
      post :create, aporte: { category: @aporte.category, content: @aporte.content, created_at: @aporte.created_at, fecha: @aporte.fecha, file2: @aporte.file2, file3: @aporte.file3, file: @aporte.file, name: @aporte.name, title: @aporte.title, updated_at: @aporte.updated_at }
    end

    assert_redirected_to aporte_path(assigns(:aporte))
  end

  test "should show aporte" do
    get :show, id: @aporte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aporte
    assert_response :success
  end

  test "should update aporte" do
    put :update, id: @aporte, aporte: { category: @aporte.category, content: @aporte.content, created_at: @aporte.created_at, fecha: @aporte.fecha, file2: @aporte.file2, file3: @aporte.file3, file: @aporte.file, name: @aporte.name, title: @aporte.title, updated_at: @aporte.updated_at }
    assert_redirected_to aporte_path(assigns(:aporte))
  end

  test "should destroy aporte" do
    assert_difference('Aporte.count', -1) do
      delete :destroy, id: @aporte
    end

    assert_redirected_to aportes_path
  end
end
