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