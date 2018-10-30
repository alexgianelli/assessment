require "application_system_test_case"

class AllanfearnsTest < ApplicationSystemTestCase
  setup do
    @allanfearn = allanfearns(:one)
  end

  test "visiting the index" do
    visit allanfearns_url
    assert_selector "h1", text: "Allanfearns"
  end

  test "creating a Allanfearn" do
    visit allanfearns_url
    click_on "New Allanfearn"

    fill_in "Timestamp", with: @allanfearn.timestamp
    fill_in "Value", with: @allanfearn.value
    click_on "Create Allanfearn"

    assert_text "Allanfearn was successfully created"
    click_on "Back"
  end

  test "updating a Allanfearn" do
    visit allanfearns_url
    click_on "Edit", match: :first

    fill_in "Timestamp", with: @allanfearn.timestamp
    fill_in "Value", with: @allanfearn.value
    click_on "Update Allanfearn"

    assert_text "Allanfearn was successfully updated"
    click_on "Back"
  end

  test "destroying a Allanfearn" do
    visit allanfearns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Allanfearn was successfully destroyed"
  end
end
