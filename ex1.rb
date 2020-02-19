# Write a function "print_stairs(n, str)" which takes string input and an i
# nteger n and outputs a series of n strings in a geometric pattern resembling 
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

#Finally, we have arrived at good idiomatic Ruby style!

print_stairs4(5, "aa");









