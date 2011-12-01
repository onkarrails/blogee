require 'test_helper'

class Category1sControllerTest < ActionController::TestCase
  setup do
    @category1 = category1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category1" do
    assert_difference('Category1.count') do
      post :create, category1: @category1.attributes
    end

    assert_redirected_to category1_path(assigns(:category1))
  end

  test "should show category1" do
    get :show, id: @category1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category1.to_param
    assert_response :success
  end

  test "should update category1" do
    put :update, id: @category1.to_param, category1: @category1.attributes
    assert_redirected_to category1_path(assigns(:category1))
  end

  test "should destroy category1" do
    assert_difference('Category1.count', -1) do
      delete :destroy, id: @category1.to_param
    end

    assert_redirected_to category1s_path
  end
end
