require 'test_helper'

class BayaranControllerTest < ActionController::TestCase
  setup do
    @bayaran = bayaran(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bayaran)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bayaran" do
    assert_difference('Bayaran.count') do
      post :create, bayaran: { jumlah: @bayaran.jumlah, nota: @bayaran.nota, tarikh: @bayaran.tarikh }
    end

    assert_redirected_to bayaran_path(assigns(:bayaran))
  end

  test "should show bayaran" do
    get :show, id: @bayaran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bayaran
    assert_response :success
  end

  test "should update bayaran" do
    patch :update, id: @bayaran, bayaran: { jumlah: @bayaran.jumlah, nota: @bayaran.nota, tarikh: @bayaran.tarikh }
    assert_redirected_to bayaran_path(assigns(:bayaran))
  end

  test "should destroy bayaran" do
    assert_difference('Bayaran.count', -1) do
      delete :destroy, id: @bayaran
    end

    assert_redirected_to bayaran_index_path
  end
end
