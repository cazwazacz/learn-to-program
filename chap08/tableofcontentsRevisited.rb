array = ["Table of Contents", "Chapter 1: Getting Started", "page 1", "Chapter 2: Numbers", "page 9", "Chapter 3: Letters", "page 13"]

length = array.length

lineWidth = 40

for i in 0..array.length-1
	if i == 0
		puts array[i].center(lineWidth)
	elsif i % 2 == 1
		puts array[i].ljust(lineWidth/2) + array[i+1].rjust(lineWidth/2)
	end
end
