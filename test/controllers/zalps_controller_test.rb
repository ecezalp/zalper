require 'test_helper'

class ZalpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zalp = zalps(:one)
  end

  test "should get index" do
    get zalps_url, as: :json
    assert_response :success
  end

  test "should create zalp" do
    assert_difference('Zalp.count') do
      post zalps_url, params: { zalp: { comment: @zalp.comment, title: @zalp.title } }, as: :json
    end

    assert_response 201
  end

  test "should show zalp" do
    get zalp_url(@zalp), as: :json
    assert_response :success
  end

  test "should update zalp" do
    patch zalp_url(@zalp), params: { zalp: { comment: @zalp.comment, title: @zalp.title } }, as: :json
    assert_response 200
  end

  test "should destroy zalp" do
    assert_difference('Zalp.count', -1) do
      delete zalp_url(@zalp), as: :json
    end

    assert_response 204
  end
end
