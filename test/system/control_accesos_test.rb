require "application_system_test_case"

class ControlAccesosTest < ApplicationSystemTestCase
  setup do
    @control_acceso = control_accesos(:one)
  end

  test "visiting the index" do
    visit control_accesos_url
    assert_selector "h1", text: "Control accesos"
  end

  test "should create control acceso" do
    visit control_accesos_url
    click_on "New control acceso"

    fill_in "Name", with: @control_acceso.name
    fill_in "Password", with: @control_acceso.password
    click_on "Create Control acceso"

    assert_text "Control acceso was successfully created"
    click_on "Back"
  end

  test "should update Control acceso" do
    visit control_acceso_url(@control_acceso)
    click_on "Edit this control acceso", match: :first

    fill_in "Name", with: @control_acceso.name
    fill_in "Password", with: @control_acceso.password
    click_on "Update Control acceso"

    assert_text "Control acceso was successfully updated"
    click_on "Back"
  end

  test "should destroy Control acceso" do
    visit control_acceso_url(@control_acceso)
    click_on "Destroy this control acceso", match: :first

    assert_text "Control acceso was successfully destroyed"
  end
end
