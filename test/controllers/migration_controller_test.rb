require "test_helper"

class MigrationControllerTest < ActionDispatch::IntegrationTest
  test "should get create_articles" do
    get migration_create_articles_url
    assert_response :success
  end
end
