def start
	get_name
	get_age
	get_favorite_numbers
	display_message
end

def get_name
	puts "What is your name?"
	@name = gets.chomp
end

def get_age
	puts "Hello #{@name}, what is your age?"
	@age = gets.chomp
end

def get_favorite_numbers
	@favorite_numbers = []
	puts "#{@name}, what are your three favorite numbers?"
	3.times do
		number = gets.chomp
		@favorite_numbers << number.to_i
	end
end

def display_message
	sum = @favorite_numbers[0] + @favorite_numbers[1] + @favorite_numbers[2]
	if @age.to_i > sum
		puts "#{@name}, the sum of #{@favorite_numbers[0]}, #{@favorite_numbers[1]}, and #{@favorite_numbers[2]} is #{sum}. This is less than your age."
	elsif @age.to_i < sum
		puts "#{@name}, the sum of #{@favorite_numbers[0]}, #{@favorite_numbers[1]}, and #{@favorite_numbers[2]} is #{sum}. This is greater than your age."
	else
		puts "#{@name}, the sum of #{@favorite_numbers[0]}, #{@favorite_numbers[1]}, and #{@favorite_numbers[2]} is #{sum}. This is the same as your age."		
	end
end

start