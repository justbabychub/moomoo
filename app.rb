require 'rubygems'
require 'bundler'

Bundler.require

get '/hi' do
  "Hi Krystov!"
end
