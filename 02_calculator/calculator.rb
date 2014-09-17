def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

def sum(numbers)
    total = 0
    numbers.each {|x| total += x}
    total
end

def multiply(numbers)
    total = 1
    numbers.each {|x| total *= x}
    total
end

def power(a,b)
    total = 1
    b.times {total *= a}
    total
end

def factorial(n)
    if n = 0
        1
    else
        n * factorial(n - 1)
    end
end


