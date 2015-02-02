require 'rubygems'
require 'bundler'

Bundler.require

module Moomoo
  class App < Sinatra::Base
    get '/' do
      haml :home, :locals => {:name => "Ron"}
    end
  end
end
