class CreateTryalCards < ActiveRecord::Migration[7.0]
  def change
    create_table :tryal_cards do |t|

      t.timestamps
    end
  end
end
