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

  has_many :blockees, :foreign_key => "user_id",
  :class_name => "Blockee"
  has_many :blocked_users, :through => :blockees, dependent: :destroy

  has_many :comments, :foreign_key => "user_id"

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

  #calculates percentage of character story completed by user
  def character_percent_complete(character)
    level_total=[]
     self.levels.each do |level|
        if character.levels.include? level
          level_total<<level
        end
      end
    return (level_total.length/7.0*100).round
  end

  #follow other user
  def follow(other_user)
     friends << other_user
  end

  #unfollow other user
  def unfollow(other_user)
    friends.delete(other_user)
  end

  #block user
  def block(other_user)
    blocked_users<<other_user
  end

  #unblock user
  def unblock(other_user)
    blocked_users.delete(other_user)
  end

end


