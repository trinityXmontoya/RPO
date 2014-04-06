require 'spec_helper'

describe User do

  subject(:user1){User.new(id:10,username:'snoopdog',email:'snoopdog@gmail.com', password:'snoopy7', password_confirmation:'snoopy7',photo_url: "http://www.biography.com/imported/images/Biography/Images/Profiles/S/Snoop-Dogg-197052-1-402.jpg",time_played:10,character_id:1,level_id:1)}
  subject(:user2){User.new(id:11,username:'loopdog',email:'loopdog@gmail.com', password:'looopy7', password_confirmation:'looopy7',photo_url: "looopy.jpg",time_played:10,character_id:1,level_id:1)}
  subject(:level1){Level.new(id:10,name:"Blade Runner")}
  subject(:character1){Character.new(id:10,name:'Parzival',photo_url:'http://th03.deviantart.net/fs70/PRE/i/2013/205/8/1/parzival_by_alexiel1910-d6evrcw.png',skill:'code')}
  subject(:game1){Game.new(id:10, name: 'Mastermind',photo_url:'http://www.thegrosslife.com/wp-content/uploads/2009/12/mastermind.jpg',points:20)}

  describe '.calculate_score' do
  it 'returns a score calculated based on games played by user' do
      user1.games<<game1
      expect(user1.calculate_score).to eq(20)
    end
  end

  describe '.character_percent_complete' do
  it 'returns an integer of a character\'s level played by user' do
    user1.characters<<character1
    character1.levels<<level1
    user1.levels<<level1
    expect(user1.character_percent_complete(character1)).to eq(14)
  end
  end


  it 'has the ability to follow a user' do
    user1.follow(user2)
    expect(user1.friends.include? user2).to eq(true)
  end

  it 'has the ability to unfollow a user' do
    user1.unfollow(user2)
    expect(user1.friends.include? user2).to eq(false)
  end

  it 'has the ability to block a user' do
    user1.block(user2)
    expect(user2.blocked_users.include? user2).to eq(true)
  end

  it 'has the ability to unblock a user' do
  end

end#end user
