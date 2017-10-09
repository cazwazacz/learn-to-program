def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # no more special cases or returns
  num_string = '' # string to return
  ones_place = ['one', 'two', 'three', 
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers =  ['eleven', 'twelve', 'thirteen', 
                'fourteen', 'fifteen', 'sixteen',
                'seventeen', 'eighteen', 'nineteen']
  zillions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion', 18],
              ['sextillion', 21],
              ['septillion', 24],
              ['octillion', 27],
              ['nonillion', 30],
              ['decillion', 33],
              ['undecillion', 36],
              ['duodecillion', 39],
              ['tredecillion', 42],
              ['quattuordecillion', 45],
              ['quindecillion', 48],
              ['sexdecillion', 51],
              ['septendecillion', 54],
              ['octodecillion', 57],
              ['novemdecillion', 60],
              ['vigintillion', 63],
              ['googol', 100]]

  # "left" is how much of the number we still have to write out
  # "write" is the part we are writing out right now

  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base #How many zillions left
    left = left - write*zil_base #subtract those zillions

    if write > 0
      #here's the recursion
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        #so we don't write 'two billionfifty-one'
        num_string = num_string + ' '
      end
    end
  end

  write = left/10 #how many tens left?
  left = left - write*10 #subtract those tens

  if write > 0
    if ((write == 1) and (left > 0))
      #since we can't write "tenty-two" instead of 
      #"twelve" we have to make a special exception
      num_string = num_string + teenagers[left-1]

      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left # how many ones left to write out
  left = 0 #subtract off those ones

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string

end


puts english_number 23
puts english_number 234
puts english_number 6456
puts english_number 9234
puts english_number 32
puts english_number 32311
puts english_number 9999999
puts english_number 1239
