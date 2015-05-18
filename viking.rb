def power(num1,num2)
  final = 1

	(1..num2).each do |i|
		final = num1 * final
	end

	if num2 == 0
		return 1
	else
		return final
	end
end

def string_power(num1, num2)
	if num2 != 0
		str = ("#{num1}*" * num2).chop
		eval(str)
	else
		1
	end
end

def factorial(num)
	final = 1

	(2..num).each do |i|
		final = final * i
	end

	final
end

def uniques(array)
	uniqueArray = []
	array.each do |item|
		if uniqueArray.include?(item)
		else
			uniqueArray << item
		end
	end
	uniqueArray
end

def combinations(array1, array2)
	combined = []

	array1.each do |item1|
		array2.each do |item2|
			combined << (item1.to_s + item2.to_s)	
		end		
	end

	combined
	
end

def is_prime?(num)
	divisible = 0

	(2..(num-1)).each do |i|
		if num%i == 0
			divisible += 1
		else	
		end
	end

	if divisible > 0
		return false
	else
		return true
	end
	
end

def overlap(rec1, rec2)
	if (rec2[0][0] < rec1[1][0]) && (rec2[0][1] < rec1[1][1])
		true
	else
		false
	end

end

def counting_game(players = 10, endcount = 100)
	currentNumber = 1
	currentPlayer = 0
	switch = false

	(1..endcount).each do |i|
		skip = false

		if currentNumber%7 == 0
			switch = !switch
			if currentNumber%11 == 0
				skip = true
			end
		elsif currentNumber%11 == 0
			skip = true
		end
		
		if (switch == true) && (skip == true)

			if currentPlayer == 1
				currentPlayer = players
			else
				currentPlayer -= 2
			end

		elsif switch == true

			if currentPlayer == 1
				currentPlayer = players
			else
				currentPlayer -= 1
			end

		elsif skip == true

			if currentPlayer == players
				currentPlayer = 1
			else
				currentPlayer += 2
			end

		else

			if currentPlayer == players
				currentPlayer = 1
			else 
				currentPlayer += 1
			end

		end

		currentNumber = i
		puts "Player #{currentPlayer} says '#{currentNumber}'!"

	end
end