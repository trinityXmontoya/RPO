require 'spec_helper'

describe User do

  subject(:user1){User.find(1)}
  subject(:level1){Level.find(1)}
  subject(:character1){Character.find(1)}
  subject(:game1){Game.find(1)}

  it 'has a score calculated for it based on games played' do
      user1.games<<game1
      expect(user1.calculate_score).to eq(20)
  end

  it 'has a percentage of a character\'s level that it has completed' do
    user1.characters<<character1
  end

  it 'has the ability to follow a user' do
  end

  it 'has the ability to unfollow a user' do
  end

  it 'has the ability to block a user' do
  end

  it 'has the ability to unblock a user' do
  end

end#end user
