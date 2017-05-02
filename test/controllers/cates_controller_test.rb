require 'test_helper'

class CatesControllerTest < ActionController::TestCase
  setup do
    @cate = cates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cate" do
    assert_difference('Cate.count') do
      post :create, cate: {  }
    end

    assert_redirected_to cate_path(assigns(:cate))
  end

  test "should show cate" do
    get :show, id: @cate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cate
    assert_response :success
  end

  test "should update cate" do
    patch :update, id: @cate, cate: {  }
    assert_redirected_to cate_path(assigns(:cate))
  end

  test "should destroy cate" do
    assert_difference('Cate.count', -1) do
      delete :destroy, id: @cate
    end

    assert_redirected_to cates_path
  end
end
