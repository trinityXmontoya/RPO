require 'spec_helper'

describe User do

  before :all do
    @user=User.new(id:1,username:'jo',password:"jojojo",password_confirmation:"jojojo",character_id:1,:level_id:1, photo_url: "jojo.jpeg")
    @
  end
  it 'has a score calculated for it based on games played' do

  end

  it 'has a percentage of a character\'s level that it has completed' do
  end

  it 'has the ability to follow a user' do
  end

  it 'has the ability to unfollow a user' do
  end

  it 'has the ability to block a user' do
  end

  it 'has the ability to unblock a user' do
  end

end
