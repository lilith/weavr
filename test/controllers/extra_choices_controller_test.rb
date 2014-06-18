require 'test_helper'

class ExtraChoicesControllerTest < ActionController::TestCase
  setup do
    @extra_choice = extra_choices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extra_choices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extra_choice" do
    assert_difference('ExtraChoice.count') do
      post :create, extra_choice: { choice_location_id: @extra_choice.choice_location_id, destination_id: @extra_choice.destination_id, mod_id: @extra_choice.mod_id, priority: @extra_choice.priority, title: @extra_choice.title }
    end

    assert_redirected_to extra_choice_path(assigns(:extra_choice))
  end

  test "should show extra_choice" do
    get :show, id: @extra_choice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extra_choice
    assert_response :success
  end

  test "should update extra_choice" do
    patch :update, id: @extra_choice, extra_choice: { choice_location_id: @extra_choice.choice_location_id, destination_id: @extra_choice.destination_id, mod_id: @extra_choice.mod_id, priority: @extra_choice.priority, title: @extra_choice.title }
    assert_redirected_to extra_choice_path(assigns(:extra_choice))
  end

  test "should destroy extra_choice" do
    assert_difference('ExtraChoice.count', -1) do
      delete :destroy, id: @extra_choice
    end

    assert_redirected_to extra_choices_path
  end
end
