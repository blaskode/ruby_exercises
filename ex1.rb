#(1) Write a function which takes string input and an integer n and 
# outputs a series of n strings. Each output string contains an 
# additional copy of the input string to produce a geometric pattern. 
# n must be a non-negative integer. 
# Please use recursion and nested functions. 
# Watch out for scope gating!
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