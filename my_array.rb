# This is a class that mimics Arrays

class MyArray

    attr_reader :array

    def initialize
        @array = []
    end

    # a method to push values into the array
    def add_value(item)
        array.push(item)
    end

    def each
        counter = 0
            while counter < array.length
                # this will call the block that is passed in when the method is called on the current item in the array
                yield(array[counter])
            counter += 1
                end
        return array
    end
end

my_array = MyArray.new

my_array.add_value(1)
my_array.add_value(2)
my_array.add_value(3)

my_array.each { |item| puts "item: #{item}" }