
# (1)
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

# (26) Create a function that takes a string as the first 
# argument, and a (string) specification as a second argument. 
# If the specification is "word", return a string with each 
# word reversed while maintaining their original order. 
# If the specification is "sentence", reverse the order of the 
# words in the string, while keeping the words intact.
def flip(str, spec)
	if spec == 'word'
		s = str.split(' ') #split str into words
		s1 = []
		s.each {|n| s1.push(n.reverse)}
		s1.join ' '
	elsif spec == 'sentence'
		s = str.split(' ') #split str into words
		s1 = []
		s.each {|n| s1.unshift(n)}
		s1.join ' '
	end
end

# (27) Create a function that returns the minimum number of removals 
# to make the sum of all elements in an array even.

def minimum_removals(arr)
	sum = 0;
	arr.each {|n| sum += n}

	if sum.even?
		return 0
	end

	count = 0;

	if sum.odd?
		arr.each do |n|
			if n.odd? 
				count += 1 
			end
		end
	end
	if count == arr.length
		nil
	else
		1
	end
end


# (28) Create a function that takes in year and month as input, 
# then return what year it would be after n-months has elapsed.
def after_n_months(year, month)
	if year == nil
		"year missing"
	elsif month == nil
		"month missing"
	else
		(year + month/12).to_i
	end
end

# (29) Create a function that takes two strings as arguments and 
# returns the number of times the first string (the single 
# character) is found in the second string.
def char_count(str1, str2)
	s = str2.split('').select {|n| n == str1}
	s.length
end

# (30) Per 6 coffee cups I buy, I get a 7th cup free. In total, I get 7 
# cups. Create a function that takes n cups bought and return the 
# total number of cups I would get.
def total_cups(n)
	total = (n / 6).to_i + n
end

# (31) A number is narcissistic when the sum of its digits, 
# with each digit raised to the power of digits quantity, 
# is equal to the number itself.
def is_narc n
  x = n.to_s.split('')
  x = x.map { |x| x.to_i }
  exp = x.length
  #p exp
  x = x.map { |x| x**exp }
  x = x.sum
  x == n ? true : false 
end

def additive_inverse(arr)
  arr.map { |x| x * -1 }
end

# (32) counts the number of 1's in a 2d matrix
def count_ones(matrix)
  count = 0;
  matrix.each do |sub_matrix| 
    sub_matrix.each {|x| x == 1 ? count += 1 : nil}
  end
  count
end

# (33) Create a function that takes a string and returns 
# true or false, depending on whether the characters are in order or not.
def is_in_order(str)
  str = str.split ''
  x = str[0].ord
  str.shift
  str.each do |c|
    if x > c.ord
      return false
    else
      x = c.ord 
    end
  end
  true
end

# (34) Your job is to make a "Twitter link" regular expression rx. 
# This RegEx searches a tweet to find the @handle and the #handle. 
# Only return the @ and # handles.
def tweet(str)
  arr = []
  scans = str.scan(/(@\w+)|(#\w+)/)
  scans.each do |x|
    x.each do |y|
      if y
        arr.push y
      end
    end
  end
  arr.join ' '
end

# (35)
def chatroom_status(users)
  output = ""
  if users == 0
    output = "no one online"
  end
  if users >= 1
    output += " [user 1] online"
  end
  if users >= 2
    output += " [user 2] online"
  end
  if users > 2
    output += " and #{users - 2} online"
  end
  output 
end

# (36) Given two integers, a and b, return true if a can be 
# divided evenly by b. Return false otherwise.
# Notice how the ternary operator is used: no "if" is
# required since the mod returns a value
def divides_evenly(a, b)
	a % b == 0 ? true : false
end

# (37) Create a function that takes two arguments (item, times). 
# The first argument (item) is the item that needs repeating 
# while the second argument is the number of times the item 
# is to be repeated. Notices that "times" is a method of integers
# as well as a variable name.
def repeat(item, times)
	return_array = []
	times.times { return_array.push(item) }
	return_array
end

# (38) A number is narcissistic when the sum of its digits, 
# with each digit raised to the power of digits quantity, 
# is equal to the number itself.
# Given a positive integer n, implement a function that 
# returns true if the number is narcissistic, and false if it's not.
def is_narcissistic(n)
  list = n.to_s.split ''
  power = list.length
  list.map! {|x| x.to_i}
  sum = list.inject(0) { |sum, x| sum += x ** power}
  sum == n ? true : false
end

# (39) In this challenge, you have to establish if a number is apocalyptic. 
# A positive integer n greater than 0 is apocalyptic when 2 elevated to n 
# contains one or more occurrences of 666 into it.

# Given an integer n, implement a function that returns:

# "Safe" if n is not apocalyptic.
# "Single" if into 2^n there's a single occurence of 666.
# "Double" if into 2^n there are two occurences of 666.
# "Triple" if into 2^n there are three occurences of 666.
def is_apocalyptic(number)
  num_str = (2**number).to_s
  array_of_instances = num_str.scan /666/
  times = array_of_instances.length
  case times
  when 0
    "Safe"
  when 1
    "Single"
  when 2
    "Double"
  when 3
    "Triple"
  else
    "Fucked"
  end
end

# (40) Write a function to reverse an array.
def reverse(arr)
  output = []
  arr.reverse_each {|x| output.push x}
  output
end

# (41) 
def complete_binary(s)
  s = s.to_s
  until s.length % 8 == 0
    s = 0.to_s.concat(s.to_s);
  end
  s  
end

# (42)
def find_smallest_num(arr)
  arr.sort!
  arr.shift
end

# (43) Remove duplicates from array
def remove_dups(arr)
  new_arr = []
  arr.each do |x|
    unless new_arr.include? x
      new_arr.push x
    end
  end
  new_arr
end

# (44)
def has_spaces(str)
  x = / /.match(str)
  x == nil ? false : true
end

# (45)
def difference(nums)
  sorted_nums = nums.sort
  return (sorted_nums.pop - sorted_nums.shift)
end

# (46)
def get_case(str)
  if /^[^A-Z]+$/.match(str)
    return "lower"
  elsif /^[^a-z]+$/.match(str)
    return "upper"
  else
    return "mixed"
  end
end

# (48)
def squares_sum(n)
  sum = 0
  n.times { |x|  sum += x**2}
  sum += n**2
  return sum
end

# (49)
def mood_today(mood = nil)
  string = "Today, I am feeling"
  mood.nil? ? "#{string} neutral" : "#{string} #{mood}" 
end

# (50) Implement a function that returns an array containing 
# all the consecutive numbers in ascendant order from the given 
# value low up to the given value high (bounds included).
def get_sequence(low, high)
  (low..high).to_a
end
