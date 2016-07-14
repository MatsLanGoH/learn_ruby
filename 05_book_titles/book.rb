class Book
# write your code here
    attr_reader :title

    def title=(name)
        @title = capitalize_title(name)
    end


    def capitalize_title(book_title)
        small_words = ["a", "an", "and", "in", "of", "the"]
        output = []

        book_title.split.each_with_index do |word, idx|
            if (small_words.include?(word)) and (idx != 0)
                output << word
            else
                output << word.capitalize 
            end
        end

        return output.join(" ")
    end

end
