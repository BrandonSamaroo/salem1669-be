class AddDetailsToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :name, :string, required: true
    add_column :players, :player_number, :integer, required: true
    add_column :players, :is_witch, :boolean, required: true
    add_column :players, :lives, :integer, default: true
    add_reference :players, :game, foreign_key: true, required: true
  end
end
