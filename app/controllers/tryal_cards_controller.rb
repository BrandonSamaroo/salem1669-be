class TryalCardsController < ApplicationController
  before_action :set_tryal_card, only: %i[ show update destroy ]

  # GET /tryal_cards
  def index
    @tryal_cards = TryalCard.all

    render json: @tryal_cards
  end

  # GET /tryal_cards/1
  def show
    render json: @tryal_card
  end

  # POST /tryal_cards
  def create
    @tryal_card = TryalCard.new(tryal_card_params)

    if @tryal_card.save
      render json: @tryal_card, status: :created, location: @tryal_card
    else
      render json: @tryal_card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tryal_cards/1
  def update
    if @tryal_card.update(tryal_card_params)
      render json: @tryal_card
    else
      render json: @tryal_card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tryal_cards/1
  def destroy
    @tryal_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tryal_card
      @tryal_card = TryalCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tryal_card_params
      params.fetch(:tryal_card, {})
    end
end
