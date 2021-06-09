require "application_system_test_case"

class Note1sTest < ApplicationSystemTestCase
  setup do
    @note1 = note1s(:one)
  end

  test "visiting the index" do
    visit note1s_url
    assert_selector "h1", text: "Note1s"
  end

  test "creating a Note1" do
    visit note1s_url
    click_on "New Note1"

    fill_in "Age", with: @note1.age
    fill_in "Name", with: @note1.name
    click_on "Create Note1"

    assert_text "Note1 was successfully created"
    click_on "Back"
  end

  test "updating a Note1" do
    visit note1s_url
    click_on "Edit", match: :first

    fill_in "Age", with: @note1.age
    fill_in "Name", with: @note1.name
    click_on "Update Note1"

    assert_text "Note1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Note1" do
    visit note1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Note1 was successfully destroyed"
  end
end
