
# Another way to call the block is by assigning it to a variable using an '&'

def get_name(prompt, &block_var)
    if block_given?
        print prompt + ": "
        name = gets.chomp.to_s
        print "What is your age? "
        age = gets.chomp.to_i
        block_var.call(name, age)
        name
    else 
        puts "No block given."
    end
end

my_details = get_name("Enter your name") do |your_name, your_age|
    puts "Thats a cool name, #{your_name}! You are #{your_age} years old."
end

p my_details