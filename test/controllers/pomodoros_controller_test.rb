require 'test_helper'

class PomodorosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pomodoros_index_url
    assert_response :success
  end

  test "should get new" do
    get pomodoros_new_url
    assert_response :success
  end

  test "should get edit" do
    get pomodoros_edit_url
    assert_response :success
  end

  test "should get show" do
    get pomodoros_show_url
    assert_response :success
  end

end
