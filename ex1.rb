
# (#)
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
def print_stairs n, str
	s = str;
	n.times {|n| puts s; s += str}
end

# (2) Wurst is the best. Create a function that takes a string and replaces 
# every mention of any type of sausage with the German word "Wurst," 
# unless—of course—the sausage is already a type of German "Wurst" 
# (i.e. "Bratwurst", see below), then leave the sausage name unchanged.
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

# (3) Create a function that returns true when num1 
# is equal to num2; otherwise return false
def is_same_num(num1, num2)
	num1 == num2
end

# (4) Create a function that returns the product 
# of all odd integers in an array.
def odd_product(arr)
	arr.filter! { |i| (i % 2 != 0) }
	x = arr.inject(:*)
	return x
end

# (5) Create a function that takes a string 
# and returns a string in which each character is repeated once.
def double_char(str)
	arr = str.split('')
	new_arr = []
	arr.each do |i| 
		2.times {new_arr.push(i)}
	end
	str = new_arr.join()
	return str;
end

# (6) Write a function that returns true 
# if a hash contains the specified key, and false
# otherwise 
def has_key(hash, key)
	hash.has_key? key
end


# (7) Computer the factorial of an integer
def factorial(int)
	(1..int).inject(:*)
end

# (8) Create a function that takes a string and 
# returns the number (count) of vowels contained within it.
def count_vowels(s)
	p s.count('aeiou')
end

# (9) Create a function that takes an array 
# of names and returns an array with only the first letter capitalized.
def cap_me(arr)
	arr.map { |i| i.capitalize}
end

# (10) Create a function that takes an array as an argument and returns true or false depending 
# on whether the average of all elements in the array is a whole number or not.
def is_avg_whole?(arr)
	sum = arr.sum
	avg_i = sum / arr.count 
	avg_f = sum / arr.count.to_f
	avg_i == avg_f
end

# (11) A syllable is defined as a repetitive sequence containing a vowel
# ex: lalala contains three syllables
# count the syllables in a given string
def count_syllables(str)
	str = str.downcase
	arr = str.split('')
	sentry = arr[0]
	syllable = arr[0]
	arr.shift
	arr.each do |n| 
		if n == sentry
			break 
		else
		 syllable += n 
		end
	end
	str.scan(syllable).size
end

# (12) Format a given string of ten numbers such that it resembles
# a phone number: (xxx) xxx-xxxx
def format_phone_number(arr)
	phone_num = "("
	3.times {phone_num += arr.shift.to_s}
	phone_num += ") "
	3.times {phone_num += arr.shift.to_s}
	phone_num += "-"
	4.times {phone_num += arr.shift.to_s}
	phone_num
end

# (13) Given an array of drink-names, return an array
# that does not contain 'cola' or 'fanta'
def skip_the_sugar(drinks)
	too_much = ['cola', 'fanta']
	drinks.select! { |n| !too_much.include? n}
	drinks
end

# (14) Create a function that outputs true if a number is prime, 
# and false otherwise.
def isPrime num
	if num == 1
		return false
	end
	stop = num - 1
	(2..stop).each do |n|  
		if (num % n) == 0 
			return false
		end
	end
	return true
end

# (15) Write a function that takes three arguments (x, y, z) and 
# returns an array containing x subarrays (e.g. [[], [], []]), 
# each containing y number of item z.
# x Number of subarrays contained within the main array.
# y Number of items contained within each subarray.
# z Item contained within each subarray.

def matrix(x, y, z)
  sub_array = []
  y.times do
    sub_array.push(z);
  end
  #sub_array
  array = [];
  x.times do
    array.push(sub_array)
  end
  array
end

# (17) add the consecutive integers up and including
# the input. eg, add_up(5) = 16
def add_up(num)
	sum = 0;
	(1..num).each { |x| sum += x }
	sum
end

# (18) return the smaller of two integers, but do not
# convert from string to integer unless necessary
def smaller_num(n1, n2)
	if n1.length > n2.length
		n2
	elsif n2.length > n1.length
		n1
	else
		n1.to_i > n2.to_i ? n2 : n1 
	end
end

# (19) return pi to n decimal places
def my_pi(n)
	#p Math::PI
	Math::PI.round(n)
end

# (20) sum all even integers within a range of two numbers,
# the sum should be inclusive of both the first and last even
# number in the rangea
def sum_even_nums_in_range(start, stop)
	sum = 0;
	a = (start..stop).select { |n| n.even? }
	sum = a.sum
	sum
end

# (21) find the maximum of the frist n elements of an array of numbers
def max_total(nums, n)
	nums.sort!
	nums.reverse!
	sum = 0;
	n -= 1;
	(0..n).each{|n| sum += nums[n]}
	sum 
end


# (22) Determine if two strings are anagrams of each other
def is_anagram(s1, s2)
	s1 = s1.downcase.split('').sort
	s2 = s2.downcase.split('').sort
	s1 == s2 ? true : false 	 
end

# (23) Determine if all numbers in an array are even
# and return true or false
def checkAllEven(arr)
  return arr.all?{|num| num.even?}
end

# (24) Sum the absolute values of the elements
# in an array
def get_abs_sum(arr)
	sum = 0;
	arr.each { |n| sum += n.abs}
	sum
end

# (25) return "true" if "Frodo" and "Sam" are 
# adjacent elements in a string array
def middle_earth(arr)
	#arr = arr.sort
	start = 0
	finish = arr.length - 2
	truthy = false
	(start..finish).each do |n| 
		if (arr[n] == "Frodo" and arr[n + 1] == "Sam")
			truthy = true
		end
		if (arr[n] == "Sam" and arr[n + 1] == "Frodo")
			truthy = true
		end
	end
	truthy
end








