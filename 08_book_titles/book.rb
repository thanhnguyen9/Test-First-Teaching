class Book
    attr_reader :title
    
    def title=(new_title)
        little_word = %w[the and or in of a an]
        words = new_title.split(' ')
        
        words.map do |word|
            if little_word.include? word
                word
            else
                word.capitalize!
            end
        end
        words[0].capitalize!
        @title = words.join(' ')
    end
end