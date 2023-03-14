require "test_helper"

class TryalCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tryal_card = tryal_cards(:one)
  end

  test "should get index" do
    get tryal_cards_url, as: :json
    assert_response :success
  end

  test "should create tryal_card" do
    assert_difference("TryalCard.count") do
      post tryal_cards_url, params: { tryal_card: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show tryal_card" do
    get tryal_card_url(@tryal_card), as: :json
    assert_response :success
  end

  test "should update tryal_card" do
    patch tryal_card_url(@tryal_card), params: { tryal_card: {  } }, as: :json
    assert_response :success
  end

  test "should destroy tryal_card" do
    assert_difference("TryalCard.count", -1) do
      delete tryal_card_url(@tryal_card), as: :json
    end

    assert_response :no_content
  end
end
