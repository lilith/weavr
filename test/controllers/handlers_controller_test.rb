require 'test_helper'

class HandlersControllerTest < ActionController::TestCase
  setup do
    @handler = handlers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:handlers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create handler" do
    assert_difference('Handler.count') do
      post :create, handler: { code: @handler.code, hook_id: @handler.hook_id, mod_id: @handler.mod_id, priority: @handler.priority }
    end

    assert_redirected_to handler_path(assigns(:handler))
  end

  test "should show handler" do
    get :show, id: @handler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @handler
    assert_response :success
  end

  test "should update handler" do
    patch :update, id: @handler, handler: { code: @handler.code, hook_id: @handler.hook_id, mod_id: @handler.mod_id, priority: @handler.priority }
    assert_redirected_to handler_path(assigns(:handler))
  end

  test "should destroy handler" do
    assert_difference('Handler.count', -1) do
      delete :destroy, id: @handler
    end

    assert_redirected_to handlers_path
  end
end
