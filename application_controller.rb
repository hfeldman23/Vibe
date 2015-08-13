
require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post "/choice" do
    puts params
    erb :"#{params['feeling'].downcase}"
  end
  
  
end
