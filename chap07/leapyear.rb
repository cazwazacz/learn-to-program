puts "Gimme a starting year"
first = gets.chomp.to_i
puts "Gimme an ending year"
last = gets.chomp.to_i
puts ''

while first < last+1
	if first % 400 == 0
		puts first
	elsif first % 4 == 0 && first % 100 > 0
		puts first
	end
	first += 1
end

