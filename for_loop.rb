# A for loop in Ruby is an iterator which functions internally, like the each method.

# Most Ruby programmers don't use the for loop very often, instead preferring to use an "each" loop and do iteration. The reason for this is that the variables used to iterate in the for loop exist outside the for loop, while in other iterators, they exist only inside the block of code that’s running.

for item in 1..5 do
    puts "The current item is #{item}"
end

for item in ["programming", "is", "fun"] do
    puts "Word: #{item}"
end

animals = ["dog", "cat", "horse", "goat"]

for item in animals do
  puts "#{item}"
end