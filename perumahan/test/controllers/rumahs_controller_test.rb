require 'test_helper'

class RumahsControllerTest < ActionController::TestCase
  setup do
    @rumah = rumahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rumahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rumah" do
    assert_difference('Rumah.count') do
      post :create, rumah: { nombor: @rumah.nombor, sah: @rumah.sah }
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
    patch :update, id: @rumah, rumah: { nombor: @rumah.nombor, sah: @rumah.sah }
    assert_redirected_to rumah_path(assigns(:rumah))
  end

  test "should destroy rumah" do
    assert_difference('Rumah.count', -1) do
      delete :destroy, id: @rumah
    end

    assert_redirected_to rumahs_path
  end
end
