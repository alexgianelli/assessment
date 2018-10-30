require 'test_helper'

class DalmarnocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dalmarnock = dalmarnocks(:one)
  end

  test "should get index" do
    get dalmarnocks_url
    assert_response :success
  end

  test "should get new" do
    get new_dalmarnock_url
    assert_response :success
  end

  test "should create dalmarnock" do
    assert_difference('Dalmarnock.count') do
      post dalmarnocks_url, params: { dalmarnock: { timestamp: @dalmarnock.timestamp, value: @dalmarnock.value } }
    end

    assert_redirected_to dalmarnock_url(Dalmarnock.last)
  end

  test "should show dalmarnock" do
    get dalmarnock_url(@dalmarnock)
    assert_response :success
  end

  test "should get edit" do
    get edit_dalmarnock_url(@dalmarnock)
    assert_response :success
  end

  test "should update dalmarnock" do
    patch dalmarnock_url(@dalmarnock), params: { dalmarnock: { timestamp: @dalmarnock.timestamp, value: @dalmarnock.value } }
    assert_redirected_to dalmarnock_url(@dalmarnock)
  end

  test "should destroy dalmarnock" do
    assert_difference('Dalmarnock.count', -1) do
      delete dalmarnock_url(@dalmarnock)
    end

    assert_redirected_to dalmarnocks_url
  end
end
