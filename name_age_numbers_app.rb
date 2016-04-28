require 'sinatra'
@name = ""
get '/' do
	erb :get_name
end

post '/input' do
	@name = params[:user_name]
	erb :get_age, :locals => {:name => @name}
end

post '/age' do
	@age = params[:user_age]
	erb :get_favorite_numbers, :locals => {:age => @age, :name => @name}
end

post '/fav_nums' do
	fav_num1 = params[:user_favorite_number_one]
	fav_num2 = params[:user_favorite_number_two]
	fav_num3 = params[:user_favorite_number_three]
	sum = fav_num1.to_i + fav_num2.to_i + fav_num3.to_i
	if sum < @age
		erb :display_comment, :locals => {:sum => sum, :fav_num1 => fav_num1, :fav_num2 => fav_num2, :fav_num3 => fav_num3, :name => @name, :less => "less"}
	elsif sum > @age
		erb :display_comment, :locals => {:sum => sum, :fav_num1 => fav_num1, :fav_num2 => fav_num2, :fav_num3 => fav_num3, :name => @name, :more => "more"}
	end
end

