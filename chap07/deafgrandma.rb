say = gets.chomp

while say != 'BYE'
	if say != say.upcase
		puts 'HUH?! SPEAK UP, SONNY!'
		say = gets.chomp
	else
		puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
		say = gets.chomp
	end
end