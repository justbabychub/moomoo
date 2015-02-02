require 'spec_helper'
require_relative '../room'

RSpec.describe Room do
  it 'has unique id' do
    room1 = Room.new
    room2 = Room.new

    expect(room2.id).to_not eq room1.id
  end

  it 'keeps track of users' do
    users = ['Ron', 'Jeff', 'Mike', 'Paul']
    room = Room.new

    users.each_index do |i|
      room.add_user users[i]
      expect(room.get_users[0..i].sort).to eq users[0..i].sort
    end
  end
end
