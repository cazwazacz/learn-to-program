def old_roman_numeral num
	final_string = ''
	if num / 1000 > 0
		final_string = 'M' * (num / 1000)
		num = num - (1000 * (num / 1000))
	end
	if num / 500 > 0 
		final_string = final_string + 'D' * (num / 500)
		num = num - (500 * (num / 500))
	end
	if num / 100 > 0 
		final_string = final_string + 'C' * (num / 100)
		num = num - (100 * (num / 100))
	end
	if num / 50 > 0 
		final_string = final_string + 'L' * (num / 50)
		num = num - (50 * (num / 50))
	end
	if num / 10 > 0 
		final_string = final_string + 'X' * (num / 10)
		num = num - (10 * (num / 10))
	end
	if num / 5 > 0 
		final_string = final_string + 'V' * (num / 5)
		num = num - (5 * (num / 5))
	end
	if num / 1 > 0 
		final_string = final_string + 'I' * (num / 1)
		num = num - (1 * (num / 1))
	end
	final_string
end

puts old_roman_numeral 3849
puts old_roman_numeral 125
puts old_roman_numeral 334
puts old_roman_numeral 78
puts old_roman_numeral 8193