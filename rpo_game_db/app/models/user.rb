class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :games
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :levels

  has_one :level
  has_one :character

  has_many :friendships, :foreign_key => "user_id",
  :class_name => "Friendship"

  has_many :friends, :through => :friendships, dependent: :destroy

  validates(:username, :email, :password, :photo_url, presence: true )
  validates(:username, :email, uniqueness: true)
  validates(:password, length: {minimum: 5})


end
