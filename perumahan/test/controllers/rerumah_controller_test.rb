require 'test_helper'

class RerumahControllerTest < ActionController::TestCase
  setup do
    @rumah = rerumah(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rerumah)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rumah" do
    assert_difference('Rumah.count') do
      post :create, rumah: { nama: @rumah.nama, nombor: @rumah.nombor, nota: @rumah.nota, sah: @rumah.sah, telefon: @rumah.telefon }
    end

    assert_redirected_to rumah_path(assigns(:rumah))
  end

  test "should show rumah" do
    get :show, id: @rumah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rumah
    assert_response :success
  end

  test "should update rumah" do
    patch :update, id: @rumah, rumah: { nama: @rumah.nama, nombor: @rumah.nombor, nota: @rumah.nota, sah: @rumah.sah, telefon: @rumah.telefon }
    assert_redirected_to rumah_path(assigns(:rumah))
  end

  test "should destroy rumah" do
    assert_difference('Rumah.count', -1) do
      delete :destroy, id: @rumah
    end

    assert_redirected_to rerumah_path
  end
end
