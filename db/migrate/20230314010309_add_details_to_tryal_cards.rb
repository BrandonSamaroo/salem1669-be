class AddDetailsToTryalCards < ActiveRecord::Migration[7.0]
  def change
    add_column :tryal_cards, :name, :string, required: true
    add_column :tryal_cards, :is_flipped, :boolean, required: true
    add_reference :tryal_cards, :game, foreign_key: true, required: true
    add_reference :tryal_cards, :player, foreign_key: true
  end
end
