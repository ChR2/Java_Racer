class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :email, :null => false
      t.string :password_digest, :null => false
      t.timestamps
    end
  end
end
