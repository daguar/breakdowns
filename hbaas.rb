$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'sinatra'
require 'lib/breakdown_library'

class Hbaas < Sinatra::Base
  BREAKDOWNS = BreakdownLibrary.new('data/BREAKDOWNS.csv')

  get '/breakdowns/random' do
    redirect BREAKDOWNS.random_url
  end
end
