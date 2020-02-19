require 'test_helper'

class StaticNotesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_notes_home_url
    assert_response :success
  end

end
