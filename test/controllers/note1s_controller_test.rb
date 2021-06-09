require "test_helper"

class Note1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @note1 = note1s(:one)
  end

  test "should get index" do
    get note1s_url
    assert_response :success
  end

  test "should get new" do
    get new_note1_url
    assert_response :success
  end

  test "should create note1" do
    assert_difference('Note1.count') do
      post note1s_url, params: { note1: { age: @note1.age, name: @note1.name } }
    end

    assert_redirected_to note1_url(Note1.last)
  end

  test "should show note1" do
    get note1_url(@note1)
    assert_response :success
  end

  test "should get edit" do
    get edit_note1_url(@note1)
    assert_response :success
  end

  test "should update note1" do
    patch note1_url(@note1), params: { note1: { age: @note1.age, name: @note1.name } }
    assert_redirected_to note1_url(@note1)
  end

  test "should destroy note1" do
    assert_difference('Note1.count', -1) do
      delete note1_url(@note1)
    end

    assert_redirected_to note1s_url
  end
end
