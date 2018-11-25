# Block convention - When the code only takes up one line, put it within curly braces. When it takes multiple lines, put it inside a do block.

3.times { puts "Hello world!" }

# Simple use of yield:

def block_method
    puts "This is the first line in block_method" 
    yield
    puts "This statement is after the yield keyword"
end

block_method do
    puts "This statement is called from the block"
end






def get_name
    print "Enter your name: "
    name = gets.chomp.to_s
    yield name
    name
end

my_name = get_name do |your_name|
    puts "Thats a cool name, #{your_name}!"
end

p my_name

