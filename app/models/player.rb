class Player < ActiveRecord::Base
  has_many :relations
  has_many :games, through: :relations
  
  validates :email, presence: true, uniqueness: true
  validates :email, format: /.*@.*\..*/
  validates :password_digest, presence: true

    include BCrypt

    def password
      @password ||= Password.new(password_digest)
    end

    def password=(pass)
      @password = Password.create(pass)
      self.password_digest = @password
    end

    def self.authenticate(email, password)
      user = Player.find_by_email(email)
      if user && (user.password == password)
        return user 
      else
        nil
      end
    end


end

