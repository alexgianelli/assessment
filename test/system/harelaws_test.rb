require "application_system_test_case"

class HarelawsTest < ApplicationSystemTestCase
  setup do
    @harelaw = harelaws(:one)
  end

  test "visiting the index" do
    visit harelaws_url
    assert_selector "h1", text: "Harelaws"
  end

  test "creating a Harelaw" do
    visit harelaws_url
    click_on "New Harelaw"

    fill_in "Timestamp", with: @harelaw.timestamp
    fill_in "Value", with: @harelaw.value
    click_on "Create Harelaw"

    assert_text "Harelaw was successfully created"
    click_on "Back"
  end

  test "updating a Harelaw" do
    visit harelaws_url
    click_on "Edit", match: :first

    fill_in "Timestamp", with: @harelaw.timestamp
    fill_in "Value", with: @harelaw.value
    click_on "Update Harelaw"

    assert_text "Harelaw was successfully updated"
    click_on "Back"
  end

  test "destroying a Harelaw" do
    visit harelaws_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Harelaw was successfully destroyed"
  end
end
