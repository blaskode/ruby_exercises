#(1) Write a Ruby program to create a new string which 
#is n copies of a given string where n is a non-negative integer. 
#use recursion and nested functions. Watch out for scope gating!
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