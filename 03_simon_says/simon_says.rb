#write your code here

def echo(str)
    return str    
end


def shout(str)
    return str.upcase    
end


def repeat(str, reps=2)
    return ((str + " ") * reps)[0..-2]
end


def start_of_word(str, length)
    return str[0..length-1]
end


def first_word(str)
    return str.split[0]
end


def titleize(str)
    arr = []
    small_words = ["and", "over", "the", "to"]
    str.split.each_with_index do |word, idx|
        if (small_words.include?(word)) and (idx != 0)
            arr << word
        else 
            arr << word.capitalize
        end
    end
    return arr.join(" ")
end