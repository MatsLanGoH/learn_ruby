#write your code here

def translate_word(word)
    if word[0] =~ /[aeiou]/
        return word + "ay"
    elsif word [1..3] =~ /qu/
        return word[3..-1] + word[0..2] + "ay"
    elsif word[0..2] =~ /qu/
        return word[2..-1] + word[0..1] + "ay"
    elsif word[0..2] =~ /[^aeiou]{3}/   
        return word[3..-1] + word[0..2] + "ay"
    elsif word[0..1] =~ /[^aeiou]{2}/
        return word[2..-1] + word[0..1] + "ay"
    elsif word[0] =~ /[^aeiou]/
        return word[1..-1] + word[0] + "ay"
    end 
end

def translate(sentence)
    arr = []
    sentence.split.each do |n|
        if n[0] == n[0].upcase 
            arr << translate_word(n.downcase).capitalize
        else
            arr << translate_word(n)
        end
    end
    return arr.join(" ")
end

