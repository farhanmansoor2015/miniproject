require 'test_helper'

class AttMastersControllerTest < ActionController::TestCase
  setup do
    @att_master = att_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:att_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create att_master" do
    assert_difference('AttMaster.count') do
      post :create, att_master: { course_id: @att_master.course_id, date: @att_master.date, datemarked: @att_master.datemarked, teacherassign_id: @att_master.teacherassign_id, topics: @att_master.topics }
    end

    assert_redirected_to att_master_path(assigns(:att_master))
  end

  test "should show att_master" do
    get :show, id: @att_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @att_master
    assert_response :success
  end

  test "should update att_master" do
    patch :update, id: @att_master, att_master: { course_id: @att_master.course_id, date: @att_master.date, datemarked: @att_master.datemarked, teacherassign_id: @att_master.teacherassign_id, topics: @att_master.topics }
    assert_redirected_to att_master_path(assigns(:att_master))
  end

  test "should destroy att_master" do
    assert_difference('AttMaster.count', -1) do
      delete :destroy, id: @att_master
    end

    assert_redirected_to att_masters_path
  end
end
