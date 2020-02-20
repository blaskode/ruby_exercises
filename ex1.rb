
# (#1-5)
# Write a function "print_stairs(n, str)" which takes string input and an 
# integer n and outputs a series of n strings in a geometric pattern resembling 
# a staircase. 
# example: 

# print_stairs(5, "aa")
# => aa
# => aaaa
# => aaaaaa
# => aaaaaaaa
# => aaaaaaaaaa

# n must be a non-negative integer. 
# Rewrite the function as many times as necessary until you arrive at good style

#(1) First attempt uses nested recursion. Note that str must be 
# passed to the inner function because of 'scope gating'
def print_stairs n, str
	def helper n, str1, str
		if n == 0
		return
		else
			puts str1
			n -= 1
			str1 += str
			helper n, str1, str
		end		
	end
	helper(n, str, str)
end


#(2) Replace if...else with a simpler control structure
# we can use "unless"
def print_stairs1 n, str
	def helper n, str1, str
		unless n == 0
			puts str1
			n -= 1
			str1 += str
			helper n, str1, str
		end		
	end
	helper(n, str, str)
end

# (3) eliminate helper function by loading 
# each line of output into an array then
# printing the array
def print_stairs2 n, str
	s = str;
	array = []
	n.times do|n| 
		array.push(s)
		s += str
	end
	array.each {|e| puts e}
end

# (4) eliminate the array 
def print_stairs3 n, str
	s = str;
	n.times do|n| 
		puts s
		s += str
	end
end

# (5) use curly-brace block syntax
# instead of a multi-line do...end
def print_stairs4 n, str
	s = str;
	n.times {|n| puts s; s += str}
end

# Finally, we have arrived at good idiomatic Ruby style!

# print_stairs4(5, "aa");

# (6 - 7) Wurst is the best. Create a function that takes a string and replaces 
# every mention of any type of sausage with the German word "Wurst," 
# unless—of course—the sausage is already a type of German "Wurst" 
# (i.e. "Bratwurst", see below), then leave the sausage name unchanged.

# (6) Convert the sausages, don't worry about punctuation.
def convert_to_wurst str
	#wursts = ['bratwurst', 'kochwurst', 'leberwurst', 
		#'mettwurst', 'rostbratwurst'];
	not_wursts = ['kielbasa', 'chorizo', 'moronga', 
		'salami', 'sausage', 'andouille', 'naem',
		'merguez', 'gurka', 'snorkers', 'pepperoni'];
	str = str.split;
	str.map! { |i| not_wursts.include?(i) ? 'Wurst' : i}
	str.join(" ")
end

# (7) Now, rewrite it so that it takes punctuation and capitalization
# into account. A sausage starting with a capital letter, or at the end
# of a sentence (followed immediately by a period), will trip up (6)

def wurst_is_better str
	not_wursts = ['kielbasa', 'chorizo', 'moronga', 
	'salami', 'sausage', 'andouille', 'naem',
	'merguez', 'gurka', 'snorkers', 'pepperoni'];
	not_wursts.each do |i| 
		str.gsub! i, 'Wurst'
		str.gsub! i.capitalize, 'Wurst'
	end
	str 
end

# Create a function that returns true when num1 
# is equal to num2; otherwise return false
def is_same_num(num1, num2)
	num1 == num2
end

# Create a function that returns the product 
# of all odd integers in an array.
def odd_product(arr)
	arr.filter! { |i| (i % 2 != 0) }
	x = arr.inject(:*)
	return x
end

# Create a function that takes a string 
# and returns a string in which each character is repeated once.

def double_char(str)
	arr = str.split('')
	new_arr = []
	arr.each{|i| new_arr.push(i); new_arr.push(i)}
	str = new_arr.join()
	return str;
end

def double_char1(str)
	arr = str.split('')
	new_arr = []
	arr.each do |i| 
		2.times {new_arr.push(i)}
	end
	str = new_arr.join()
	return str;
end

# Write a function that returns true 
# if a hash contains the specified key, and false
# otherwise 
def has_key(hash, key)
	hash.has_key? key
end

def factorial(int)
	if int == 0
		1
	else
		int * factorial(int - 1)
	end
end

def factorial1(int)
	(1..int).inject(:*)
end

# Create a function that takes a string and 
# returns the number (count) of vowels contained within it.
def count_vowels(str)
	vowels = ['a', 'e', 'i', 'o', 'u']
	str = str.split('')
	count = 0;
	str.each do |i|
		if vowels.include? i
			count += 1
		end
	end
	p count 
end

def count_vowels1(s)
	p s.count('aeiou')
end

# Create a function that takes an array 
# of names and returns an array with only the first letter capitalized.
def cap_me(arr)
	arr.map { |i| i.capitalize}
end

# Create a function that takes an array as an argument and returns true or false depending 
# on whether the average of all elements in the array is a whole number or not.
def is_avg_whole?(arr)
	sum = arr.sum
	avg_i = sum / arr.count 
	avg_f = sum / arr.count.to_f
	avg_i == avg_f
end

















