require 'test_helper'

class TetamanControllerTest < ActionController::TestCase
  setup do
    @taman = tetaman(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tetaman)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taman" do
    assert_difference('Taman.count') do
      post :create, taman: { nama: @taman.nama, nota: @taman.nota }
    end

    assert_redirected_to taman_path(assigns(:taman))
  end

  test "should show taman" do
    get :show, id: @taman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taman
    assert_response :success
  end

  test "should update taman" do
    patch :update, id: @taman, taman: { nama: @taman.nama, nota: @taman.nota }
    assert_redirected_to taman_path(assigns(:taman))
  end

  test "should destroy taman" do
    assert_difference('Taman.count', -1) do
      delete :destroy, id: @taman
    end

    assert_redirected_to tetaman_path
  end
end
