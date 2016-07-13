#write your code here

def add(num_1, num_2)
    return num_1 + num_2
end


def subtract(num_1, num_2)
    return num_1 - num_2
end


def sum(arr)
    sum = 0
    arr.each do |n|
        sum += n        
    end
    return sum
end


def multiply(arr)
    product = 1
    arr.each do |n|
        product *= n
    end
    return product    
end


def power(base, power)
    return base ** power
end


def factorial(num)
    if num == 0 or num == 1
        return 1
    else
        return num * factorial(num-1)
    end
end