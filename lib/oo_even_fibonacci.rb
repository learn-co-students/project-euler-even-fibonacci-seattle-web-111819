# Implement your object-oriented solution here!

class EvenFibonacci
    attr_reader :array, :filtered_array, :sum

    def initialize(limit)
        @first = 0
        @second = 1
        @array = []
        @filtered_array = filtered_fibonacci_array(limit)
        @sum = even_fibonacci_sum
    end

    def filtered_fibonacci_array(limit)
        i = 0
        while i < limit
            i = @first + @second
            break if i > limit
            array << i if i.even?
            @first  = @second
            @second = i
        end 
        array
    end

    def even_fibonacci_sum
        filtered_array.reduce(:+)
    end
end
