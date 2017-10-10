$nest = 0

def log description, &block
  space = ' ' * $nest
  puts "#{space}Beginning \"#{description}\"..."
  $nest = $nest + 1
    answer = block.call
  $nest = $nest - 1
  puts "#{space}...\"#{description}\" finished, returning: #{answer.to_s}"
end

log 'outer block' do
  log 'some little block' do
    log 'another one man' do
      'SCRATCH'.reverse
    end
    5
  end
  log 'yet another block' do
    'I like Thai food!'
  end
    false
end

