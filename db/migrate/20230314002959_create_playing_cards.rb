class CreatePlayingCards < ActiveRecord::Migration[7.0]
  def change
    create_table :playing_cards do |t|

      t.timestamps
    end
  end
end
