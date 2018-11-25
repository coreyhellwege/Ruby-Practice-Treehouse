# Displaying each character in a string:

"Treehouse".each_char { |character| puts "#{character}"}



# Displaying each line in a string:

haiku = """
This is a
multi-line string
in Ruby
"""

# p haiku
haiku.each_line { |line| puts "#{line}"}


# Downto method 

p 10.downto(8) { |number| puts number * 2 }
