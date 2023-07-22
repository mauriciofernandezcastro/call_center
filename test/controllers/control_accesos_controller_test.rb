require "test_helper"

class ControlAccesosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @control_acceso = control_accesos(:one)
  end

  test "should get index" do
    get control_accesos_url
    assert_response :success
  end

  test "should get new" do
    get new_control_acceso_url
    assert_response :success
  end

  test "should create control_acceso" do
    assert_difference("ControlAcceso.count") do
      post control_accesos_url, params: { control_acceso: { name: @control_acceso.name, password: @control_acceso.password } }
    end

    assert_redirected_to control_acceso_url(ControlAcceso.last)
  end

  test "should show control_acceso" do
    get control_acceso_url(@control_acceso)
    assert_response :success
  end

  test "should get edit" do
    get edit_control_acceso_url(@control_acceso)
    assert_response :success
  end

  test "should update control_acceso" do
    patch control_acceso_url(@control_acceso), params: { control_acceso: { name: @control_acceso.name, password: @control_acceso.password } }
    assert_redirected_to control_acceso_url(@control_acceso)
  end

  test "should destroy control_acceso" do
    assert_difference("ControlAcceso.count", -1) do
      delete control_acceso_url(@control_acceso)
    end

    assert_redirected_to control_accesos_url
  end
end
