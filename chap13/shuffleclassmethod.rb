class Array
  def shuffle
    array = self
    shuffled = []

    while array.length > 0
      rand_index = rand(array.length)

      curr_index = 0
      new_array = []
      
      array.each do |item|
        if curr_index == rand_index
          shuffled.push item
        else
          new_array.push item
        end
        curr_index = curr_index + 1
      end
      array = new_array
    end

    shuffled
  end
end

puts [1, 2, 4].shuffle