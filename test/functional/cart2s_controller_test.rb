require 'test_helper'

class Cart2sControllerTest < ActionController::TestCase
  setup do
    @cart2 = cart2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart2" do
    assert_difference('Cart2.count') do
      post :create, cart2: @cart2.attributes
    end

    assert_redirected_to cart2_path(assigns(:cart2))
  end

  test "should show cart2" do
    get :show, id: @cart2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart2
    assert_response :success
  end

  test "should update cart2" do
    put :update, id: @cart2, cart2: @cart2.attributes
    assert_redirected_to cart2_path(assigns(:cart2))
  end

  test "should destroy cart2" do
    assert_difference('Cart2.count', -1) do
      delete :destroy, id: @cart2
    end

    assert_redirected_to cart2s_path
  end
end
