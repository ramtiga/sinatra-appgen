# encoding: utf-8
require "sinatra/base"
require "haml"
require "sass"
require "coffee-script"

module <%= name.camelize %>
  class App < Sinatra::Base
    set :haml, :format => :html5
    
    get '/' do
      @str = "Hello world."
      haml :index
    end
    
    get '/application.css' do
      scss :"assets/scss/application"
    end
    
    get '/application.js' do
      coffee :"assets/coffee/application"
    end
  end
end


