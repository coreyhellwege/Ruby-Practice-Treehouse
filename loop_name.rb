def get_name
    name = ""
    loop do
        print "Enter your name (min 2 characters, no numbers: "
        name = gets.chomp
        if name.length >= 2 && !name.index(/\d/)
            puts "Hi #{name}"
            break
        else
            puts "Name must be longer than 2 characters and not contain numbers."
        end
    end
    return name
end

new_name = get_name()


# DOCS:

# !name.index(/\d/)

# If each index of name (name.index) does not (!name) contain any digits (/\d/) this expression will evaluate to true

