require 'test_helper'

class ShweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shweet = shweets(:one)
  end

  test "should get index" do
    get shweets_url
    assert_response :success
  end

  test "should get new" do
    get new_shweet_url
    assert_response :success
  end

  test "should create shweet" do
    assert_difference('Shweet.count') do
      post shweets_url, params: { shweet: { shweet: @shweet.shweet } }
    end

    assert_redirected_to shweet_url(Shweet.last)
  end

  test "should show shweet" do
    get shweet_url(@shweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_shweet_url(@shweet)
    assert_response :success
  end

  test "should update shweet" do
    patch shweet_url(@shweet), params: { shweet: { shweet: @shweet.shweet } }
    assert_redirected_to shweet_url(@shweet)
  end

  test "should destroy shweet" do
    assert_difference('Shweet.count', -1) do
      delete shweet_url(@shweet)
    end

    assert_redirected_to shweets_url
  end
end
