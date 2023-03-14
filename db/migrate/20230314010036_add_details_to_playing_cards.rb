class AddDetailsToPlayingCards < ActiveRecord::Migration[7.0]
  def change
    add_column :playing_cards, :color, :string, required: true
    add_column :playing_cards, :name, :string, required: true
    add_reference :playing_cards, :game, foreign_key: true, required: true
    add_reference :playing_cards, :player, foreign_key: true
  end
end
