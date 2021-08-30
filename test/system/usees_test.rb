require "application_system_test_case"

class UseesTest < ApplicationSystemTestCase
  setup do
    @usee = usees(:one)
  end

  test "visiting the index" do
    visit usees_url
    assert_selector "h1", text: "Usees"
  end

  test "creating a Usee" do
    visit usees_url
    click_on "New Usee"

    fill_in "Email", with: @usee.email
    fill_in "Name", with: @usee.name
    click_on "Create Usee"

    assert_text "Usee was successfully created"
    click_on "Back"
  end

  test "updating a Usee" do
    visit usees_url
    click_on "Edit", match: :first

    fill_in "Email", with: @usee.email
    fill_in "Name", with: @usee.name
    click_on "Update Usee"

    assert_text "Usee was successfully updated"
    click_on "Back"
  end

  test "destroying a Usee" do
    visit usees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usee was successfully destroyed"
  end
end
