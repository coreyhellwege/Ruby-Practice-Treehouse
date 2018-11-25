# The until loop executes while a condition is false

answer = ""
until answer == "n"
    print "Do you want this loop to continue?: (y/n) "
    answer = gets.chomp.to_s
end


a = 0

until a > 10 do
  p a
  a += 1
end

p a