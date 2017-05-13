require 'test_helper'

class SectionozalpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectionozalp = sectionozalps(:one)
  end

  test "should get index" do
    get sectionozalps_url, as: :json
    assert_response :success
  end

  test "should create sectionozalp" do
    assert_difference('Sectionozalp.count') do
      post sectionozalps_url, params: { sectionozalp: { belongs_to: @sectionozalp.belongs_to, belongs_to: @sectionozalp.belongs_to } }, as: :json
    end

    assert_response 201
  end

  test "should show sectionozalp" do
    get sectionozalp_url(@sectionozalp), as: :json
    assert_response :success
  end

  test "should update sectionozalp" do
    patch sectionozalp_url(@sectionozalp), params: { sectionozalp: { belongs_to: @sectionozalp.belongs_to, belongs_to: @sectionozalp.belongs_to } }, as: :json
    assert_response 200
  end

  test "should destroy sectionozalp" do
    assert_difference('Sectionozalp.count', -1) do
      delete sectionozalp_url(@sectionozalp), as: :json
    end

    assert_response 204
  end
end
