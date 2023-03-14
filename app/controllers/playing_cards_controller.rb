class PlayingCardsController < ApplicationController
  before_action :set_playing_card, only: %i[ show update destroy ]

  # GET /playing_cards
  def index
    @playing_cards = PlayingCard.all

    render json: @playing_cards
  end

  # GET /playing_cards/1
  def show
    render json: @playing_card
  end

  # POST /playing_cards
  def create
    @playing_card = PlayingCard.new(playing_card_params)

    if @playing_card.save
      render json: @playing_card, status: :created, location: @playing_card
    else
      render json: @playing_card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playing_cards/1
  def update
    if @playing_card.update(playing_card_params)
      render json: @playing_card
    else
      render json: @playing_card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playing_cards/1
  def destroy
    @playing_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playing_card
      @playing_card = PlayingCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def playing_card_params
      params.fetch(:playing_card, {})
    end
end
