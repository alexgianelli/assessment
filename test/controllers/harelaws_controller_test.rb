require 'test_helper'

class HarelawsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harelaw = harelaws(:one)
  end

  test "should get index" do
    get harelaws_url
    assert_response :success
  end

  test "should get new" do
    get new_harelaw_url
    assert_response :success
  end

  test "should create harelaw" do
    assert_difference('Harelaw.count') do
      post harelaws_url, params: { harelaw: { timestamp: @harelaw.timestamp, value: @harelaw.value } }
    end

    assert_redirected_to harelaw_url(Harelaw.last)
  end

  test "should show harelaw" do
    get harelaw_url(@harelaw)
    assert_response :success
  end

  test "should get edit" do
    get edit_harelaw_url(@harelaw)
    assert_response :success
  end

  test "should update harelaw" do
    patch harelaw_url(@harelaw), params: { harelaw: { timestamp: @harelaw.timestamp, value: @harelaw.value } }
    assert_redirected_to harelaw_url(@harelaw)
  end

  test "should destroy harelaw" do
    assert_difference('Harelaw.count', -1) do
      delete harelaw_url(@harelaw)
    end

    assert_redirected_to harelaws_url
  end
end
