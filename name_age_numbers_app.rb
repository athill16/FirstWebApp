require 'sinatra'

get '/' do
	erb :name_age_numbers, :locals => {:name => "" }
end

post '/input' do
	name = params[:input]
	erb :name_age_numbers, :locals => {:name => "Welcome, #{name}."}
end

get '/' do
	erb :name_age_numbers, :locals => {:age => "" }
end

post '/input1' do
	age = params[:input1]
	erb :name_age_numbers, :locals => {:age => "Cool, you're #{age} years old."}
end