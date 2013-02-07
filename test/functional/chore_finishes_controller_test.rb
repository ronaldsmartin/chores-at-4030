require 'test_helper'

class ChoreFinishesControllerTest < ActionController::TestCase
  setup do
    @chore_finish = chore_finishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chore_finishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chore_finish" do
    assert_difference('ChoreFinish.count') do
      post :create, chore_finish: @chore_finish.attributes
    end

    assert_redirected_to chore_finish_path(assigns(:chore_finish))
  end

  test "should show chore_finish" do
    get :show, id: @chore_finish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chore_finish
    assert_response :success
  end

  test "should update chore_finish" do
    put :update, id: @chore_finish, chore_finish: @chore_finish.attributes
    assert_redirected_to chore_finish_path(assigns(:chore_finish))
  end

  test "should destroy chore_finish" do
    assert_difference('ChoreFinish.count', -1) do
      delete :destroy, id: @chore_finish
    end

    assert_redirected_to chore_finishes_path
  end
end
