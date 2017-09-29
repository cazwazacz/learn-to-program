num = 99

while num > 2
	puts num.to_s + ' bottles of beer on the wall, ' + num.to_s + ' bottles of beer.'
	puts 'Take one down and pass it around, ' + (num-1).to_s + ' bottles of beer on the wall.'
	puts ''
	num -= 1
end

puts '2 bottles of beer on the wall, 2 bottles of beer.'
puts 'Take one down and pass it around, 1 bottle of beer on the wall.'
puts ''
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts ''
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'