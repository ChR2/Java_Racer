class Relation < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :game
  belongs_to :player
  validate :is_finished?

  def is_finished?
    if self.is_finished ==true
      errors.add(:game, "This game is expired")
    end
  end  


  def valid_relation
    Game.create()
  end 

end
