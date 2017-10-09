class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @oranges = 0
    puts 'Congratulations, you planted an orange tree!'
  end

  def height
    puts @height.to_s + 'cm'
  end

  def oneYearPasses 
    @age = @age + 1
    
    @height = @height + 50

    if @age >= 20
      puts 'Your orange tree has sadly died.'
      exit
    end

    if @age >= 3
      blossom @age
    end

  end

  def countTheOranges
    puts 'Your tree has ' + @oranges.to_s + ' oranges.'
  end

  def pickAnOrange
    if @oranges > 0
      puts 'That was delicious!'
      @oranges -= 1
    else
      puts 'There are no more oranges to pick this year.'
    end
  end

  private

  def blossom n 
    @oranges = 0
    @oranges = 5*n
  end

end

tree = OrangeTree.new
puts tree.height
tree.oneYearPasses
tree.countTheOranges
tree.oneYearPasses
tree.countTheOranges
tree.oneYearPasses
tree.countTheOranges
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.oneYearPasses
tree.countTheOranges
tree.oneYearPasses
tree.countTheOranges
tree.oneYearPasses
tree.countTheOranges
tree.oneYearPasses
tree.countTheOranges