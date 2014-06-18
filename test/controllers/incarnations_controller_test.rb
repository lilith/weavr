require 'test_helper'

class IncarnationsControllerTest < ActionController::TestCase
  setup do
    @incarnation = incarnations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incarnations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incarnation" do
    assert_difference('Incarnation.count') do
      post :create, incarnation: { coroutine: @incarnation.coroutine, display: @incarnation.display, experience: @incarnation.experience, gems: @incarnation.gems, gender: @incarnation.gender, gold: @incarnation.gold, hitpoints: @incarnation.hitpoints, level: @incarnation.level, location_id: @incarnation.location_id, mana: @incarnation.mana, max_hitpoints: @incarnation.max_hitpoints, max_mana: @incarnation.max_mana, name: @incarnation.name, other_gender: @incarnation.other_gender, profile_id: @incarnation.profile_id, title: @incarnation.title, turns: @incarnation.turns, kind: @incarnation.kind }
    end

    assert_redirected_to incarnation_path(assigns(:incarnation))
  end

  test "should show incarnation" do
    get :show, id: @incarnation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incarnation
    assert_response :success
  end

  test "should update incarnation" do
    patch :update, id: @incarnation, incarnation: { coroutine: @incarnation.coroutine, display: @incarnation.display, experience: @incarnation.experience, gems: @incarnation.gems, gender: @incarnation.gender, gold: @incarnation.gold, hitpoints: @incarnation.hitpoints, level: @incarnation.level, location_id: @incarnation.location_id, mana: @incarnation.mana, max_hitpoints: @incarnation.max_hitpoints, max_mana: @incarnation.max_mana, name: @incarnation.name, other_gender: @incarnation.other_gender, profile_id: @incarnation.profile_id, title: @incarnation.title, turns: @incarnation.turns, kind: @incarnation.kind }
    assert_redirected_to incarnation_path(assigns(:incarnation))
  end

  test "should destroy incarnation" do
    assert_difference('Incarnation.count', -1) do
      delete :destroy, id: @incarnation
    end

    assert_redirected_to incarnations_path
  end
end
