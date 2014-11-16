require 'test_helper'

class RobotsDotTextRenderTest < ActionDispatch::IntegrationTest
  fixtures :all

  test "The test robots.txt should be rendered" do
    get 'robots.txt'
    assert_response :success
    assert_equal "# Dummy test-app robots file", response.body, 'Incorrect robots.txt returned'
  end
end

