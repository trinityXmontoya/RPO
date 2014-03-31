class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :games, :uniq=>true
  has_and_belongs_to_many :characters, :uniq=>true
  has_and_belongs_to_many :levels, :uniq=>true

  has_one :level, :uniq=>true
  has_one :character, :uniq=>true

  has_many :friendships, :foreign_key => "user_id",
  :class_name => "Friendship"

  has_many :friends, :through => :friendships, dependent: :destroy

  validates(:username, :email, :password, :photo_url, presence: true )
  validates(:username, :email, :character_id, :level_id, uniqueness: true)
  validates(:password, length: {minimum: 5})


  #calculate user's total score based on games played
  def calculate_score
    score=0
    self.games.each do |game|
      score+=game.points
    end
    return score
  end

end


