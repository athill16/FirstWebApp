require 'sinatra'

enable :sessions

get '/' do
	erb :get_name
end

post '/input' do
	session[:name] = params[:user_name]
	erb :get_age, :locals => {:name => session[:name]}
end

post '/age' do
	session[:age] = params[:user_age]
	erb :get_favorite_numbers, :locals => {:age => session[:age], :name => session[:name]}
end

post '/fav_nums' do
	fav_num1 = params[:user_favorite_number_one]
	fav_num2 = params[:user_favorite_number_two]
	fav_num3 = params[:user_favorite_number_three]
	sum = fav_num1.to_i + fav_num2.to_i + fav_num3.to_i
	if sum < session[:age].to_i
		erb :display_comment, :locals => {:sum => sum, :fav_num1 => fav_num1, :fav_num2 => fav_num2, :fav_num3 => fav_num3, :name => session[:name], :result => "less"}
	else		
		erb :display_comment, :locals => {:sum => sum, :fav_num1 => fav_num1, :fav_num2 => fav_num2, :fav_num3 => fav_num3, :name => session[:name], :result => "greater"}
	end
end

