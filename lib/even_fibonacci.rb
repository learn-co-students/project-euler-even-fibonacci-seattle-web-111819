# Implement your procedural solution here!

def even_fibonacci_sum(limit)
    array = []
    first = 0
    second = 1
    i = 0
    while i < limit
        i = first + second
        break if i > limit
        array << i if i.even?
        first  = second
        second = i
    end 
    array.reduce(:+)
end
