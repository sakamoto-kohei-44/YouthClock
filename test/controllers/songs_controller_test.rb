require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get songs_index_url
    assert_response :success
  end

  test "should get result" do
    get songs_result_url
    assert_response :success
  end

end
