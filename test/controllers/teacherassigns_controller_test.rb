require 'test_helper'

class TeacherassignsControllerTest < ActionController::TestCase
  setup do
    @teacherassign = teacherassigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacherassigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacherassign" do
    assert_difference('Teacherassign.count') do
      post :create, teacherassign: { course_id: @teacherassign.course_id, faculty_id: @teacherassign.faculty_id, semester_id: @teacherassign.semester_id, session_id: @teacherassign.session_id }
    end

    assert_redirected_to teacherassign_path(assigns(:teacherassign))
  end

  test "should show teacherassign" do
    get :show, id: @teacherassign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacherassign
    assert_response :success
  end

  test "should update teacherassign" do
    patch :update, id: @teacherassign, teacherassign: { course_id: @teacherassign.course_id, faculty_id: @teacherassign.faculty_id, semester_id: @teacherassign.semester_id, session_id: @teacherassign.session_id }
    assert_redirected_to teacherassign_path(assigns(:teacherassign))
  end

  test "should destroy teacherassign" do
    assert_difference('Teacherassign.count', -1) do
      delete :destroy, id: @teacherassign
    end

    assert_redirected_to teacherassigns_path
  end
end
