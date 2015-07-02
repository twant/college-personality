require 'bundler'
Bundler.require
require_relative 'models/college.rb'


class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end
  
  get '/questionnaire' do
    erb :index
  end
  
  post '/questionnaire' do
    new_arr=[] 
    params.each{|key,value| new_arr.push(value)}
    @results=college_picker(new_arr)
    erb :results
  end

end
