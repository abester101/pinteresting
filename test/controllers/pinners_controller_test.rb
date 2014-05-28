require 'test_helper'

class PinnersControllerTest < ActionController::TestCase
  setup do
    @pinner = pinners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pinners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pinner" do
    assert_difference('Pinner.count') do
      post :create, pinner: { description: @pinner.description }
    end

    assert_redirected_to pinner_path(assigns(:pinner))
  end

  test "should show pinner" do
    get :show, id: @pinner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pinner
    assert_response :success
  end

  test "should update pinner" do
    patch :update, id: @pinner, pinner: { description: @pinner.description }
    assert_redirected_to pinner_path(assigns(:pinner))
  end

  test "should destroy pinner" do
    assert_difference('Pinner.count', -1) do
      delete :destroy, id: @pinner
    end

    assert_redirected_to pinners_path
  end
end
