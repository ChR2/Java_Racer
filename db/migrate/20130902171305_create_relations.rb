class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.belongs_to :player
      t.belongs_to :game
      t.boolean :is_finished, default:false
      t.timestamps
    end
    add_index :relations,[:player_id, :game_id], unique: true
  end
end
