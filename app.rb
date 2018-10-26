require 'sinatra'
dog = []

get '/dogs' do
    @dogs = dog
    erb :dog
end

get '/dogs/new' do
    erb :new
end

post '/dogs' do
    dog.push(params["dog"])
    redirect '/dogs'
end
