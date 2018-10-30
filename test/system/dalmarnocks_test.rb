require "application_system_test_case"

class DalmarnocksTest < ApplicationSystemTestCase
  setup do
    @dalmarnock = dalmarnocks(:one)
  end

  test "visiting the index" do
    visit dalmarnocks_url
    assert_selector "h1", text: "Dalmarnocks"
  end

  test "creating a Dalmarnock" do
    visit dalmarnocks_url
    click_on "New Dalmarnock"

    fill_in "Timestamp", with: @dalmarnock.timestamp
    fill_in "Value", with: @dalmarnock.value
    click_on "Create Dalmarnock"

    assert_text "Dalmarnock was successfully created"
    click_on "Back"
  end

  test "updating a Dalmarnock" do
    visit dalmarnocks_url
    click_on "Edit", match: :first

    fill_in "Timestamp", with: @dalmarnock.timestamp
    fill_in "Value", with: @dalmarnock.value
    click_on "Update Dalmarnock"

    assert_text "Dalmarnock was successfully updated"
    click_on "Back"
  end

  test "destroying a Dalmarnock" do
    visit dalmarnocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dalmarnock was successfully destroyed"
  end
end
