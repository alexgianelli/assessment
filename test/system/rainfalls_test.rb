require "application_system_test_case"

class RainfallsTest < ApplicationSystemTestCase
  setup do
    @rainfall = rainfalls(:one)
  end

  test "visiting the index" do
    visit rainfalls_url
    assert_selector "h1", text: "Rainfalls"
  end

  test "creating a Rainfall" do
    visit rainfalls_url
    click_on "New Rainfall"

    fill_in "Timestamp", with: @rainfall.timestamp
    fill_in "Value", with: @rainfall.value
    click_on "Create Rainfall"

    assert_text "Rainfall was successfully created"
    click_on "Back"
  end

  test "updating a Rainfall" do
    visit rainfalls_url
    click_on "Edit", match: :first

    fill_in "Timestamp", with: @rainfall.timestamp
    fill_in "Value", with: @rainfall.value
    click_on "Update Rainfall"

    assert_text "Rainfall was successfully updated"
    click_on "Back"
  end

  test "destroying a Rainfall" do
    visit rainfalls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rainfall was successfully destroyed"
  end
end
