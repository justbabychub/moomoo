require 'redis'

class Room
  def initialize(id=nil)
    @redis = Redis.new

    if id
      @id = id
    else
      @id = @redis.incr "id:room"
    end

    @room_prefix = "room:#{@id}:"
  end

  def add_user(name)
    @redis.sadd @room_prefix + 'users', name
  end

  def get_users
    @redis.smembers @room_prefix + 'users'
  end

  attr_reader :id
end
