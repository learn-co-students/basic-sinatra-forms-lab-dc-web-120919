require 'sinatra/base'

class App < Sinatra::Base


    # when creating a new instance of a resource 
    # use get request that has the html form 
    # with a method of post.
    # byebug
    get '/newteam' do 
        erb :newteam
    end
    
    
    post '/team' do
        @name = params[:name]
        @coach = params[:coach]
        @pg = params[:pg]
        @sg = params[:sg]
        @pf = params[:pf]
        @sf = params[:sf]
        @c = params[:c]
        erb :team
        # byebug
    end
    

end
