require 'redis'

class Room
  def initialize
    @redis = Redis.new
    @id = @redis.incr "id:room"
    @room_prefix = 'room' + @id.to_s + ':'
  end

  def add_user(name)
    @redis.sadd @room_prefix + 'users', name
  end

  def get_users
    @redis.smembers @room_prefix + 'users'
  end

  attr_reader :id
end
