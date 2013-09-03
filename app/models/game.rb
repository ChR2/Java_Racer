class Game < ActiveRecord::Base
  # Remember to create a migration!
  has_many :relations
  has_many :players, through: :relations 

end
