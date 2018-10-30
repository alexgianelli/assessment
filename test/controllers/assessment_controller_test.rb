require 'test_helper'

class AssessmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get assessment_index_url
    assert_response :success
  end

end
