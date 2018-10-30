require 'test_helper'

class AllanfearnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allanfearn = allanfearns(:one)
  end

  test "should get index" do
    get allanfearns_url
    assert_response :success
  end

  test "should get new" do
    get new_allanfearn_url
    assert_response :success
  end

  test "should create allanfearn" do
    assert_difference('Allanfearn.count') do
      post allanfearns_url, params: { allanfearn: { timestamp: @allanfearn.timestamp, value: @allanfearn.value } }
    end

    assert_redirected_to allanfearn_url(Allanfearn.last)
  end

  test "should show allanfearn" do
    get allanfearn_url(@allanfearn)
    assert_response :success
  end

  test "should get edit" do
    get edit_allanfearn_url(@allanfearn)
    assert_response :success
  end

  test "should update allanfearn" do
    patch allanfearn_url(@allanfearn), params: { allanfearn: { timestamp: @allanfearn.timestamp, value: @allanfearn.value } }
    assert_redirected_to allanfearn_url(@allanfearn)
  end

  test "should destroy allanfearn" do
    assert_difference('Allanfearn.count', -1) do
      delete allanfearn_url(@allanfearn)
    end

    assert_redirected_to allanfearns_url
  end
end
