bye_count = 0

while true
	say = gets.chomp

	if say == 'BYE'
		bye_count += 1
	else
		bye_count = 0
	end

	if bye_count >= 3
		puts 'AREET, G\'BYE!'
		break
	end

	if say != say.upcase
		puts 'HUH?! SPEAK UP, SONNY!'
	else
		puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
	end
end