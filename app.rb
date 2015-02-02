require 'rubygems'
require 'bundler'

Bundler.require

require_relative 'room'

module Moomoo
  class App < Sinatra::Base
    get '/' do
      haml :home, :locals => {:name => "Ron"}
    end

    get '/rooms/new' do
      room = Room.new
      puts room.id
      redirect to "/rooms/#{room.id}"
    end

    get '/rooms/:id' do
      "Hi! This is room #{params[:id]}"
    end
  end
end
