random_number = Random.new.rand(1..5)

loop do
    print "Guess the number between 1 and 5. (e to exit): "
    answer = gets.chomp
    if answer == "e"
        puts "The number was #{random_number}."
        break
    else 
        if answer.to_i == random_number
            puts "You guessed correctly!"
            break
        else
            puts "Try again"
        end
    end
end



# if statements can also be written on one line:

loop do
    print "Enter a number greater than 10 to exit"
    answer = gets.chomp.to_i
    break if answer > 10
end
