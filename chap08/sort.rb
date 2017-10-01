arr = []

while true
	item = gets.chomp

	if item != ''
		arr.push(item)
	else
		puts arr.sort
		break
	end
end