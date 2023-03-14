require "test_helper"

class PlayingCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playing_card = playing_cards(:one)
  end

  test "should get index" do
    get playing_cards_url, as: :json
    assert_response :success
  end

  test "should create playing_card" do
    assert_difference("PlayingCard.count") do
      post playing_cards_url, params: { playing_card: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show playing_card" do
    get playing_card_url(@playing_card), as: :json
    assert_response :success
  end

  test "should update playing_card" do
    patch playing_card_url(@playing_card), params: { playing_card: {  } }, as: :json
    assert_response :success
  end

  test "should destroy playing_card" do
    assert_difference("PlayingCard.count", -1) do
      delete playing_card_url(@playing_card), as: :json
    end

    assert_response :no_content
  end
end
