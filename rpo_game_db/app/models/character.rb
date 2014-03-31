class Character < ActiveRecord::Base
  has_and_belongs_to_many :users, :uniq=>true
  has_and_belongs_to_many :levels, :uniq=>true

  belongs_to :user, :uniq=>true

  #calculates percentage of character story completed by user
  def character_percent_complete(user)
    level_total=[]
      user.levels.each do |level|
        if self.levels.include? level
          level_total<<level
        end
      end
    return (level_total.length/7.0*100).round
  end

end
