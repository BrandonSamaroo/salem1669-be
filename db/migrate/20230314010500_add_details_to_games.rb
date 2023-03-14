class AddDetailsToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :room_code, :string, required: true
    add_column :games, :is_game_over, :boolean
  end
end
