require 'test_helper'

class QuizzControllerTest < ActionDispatch::IntegrationTest
  test "should get quiss" do
    get quizz_quiss_url
    assert_response :success
  end

end
