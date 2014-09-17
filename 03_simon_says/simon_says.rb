def echo(word)
    word
end

def shout(word)
    word.upcase!
end

def repeat(word,n = 2)
    ([word] * n).join(' ')
end

def start_of_word(word,num)
     word[0,num]
end

def first_word(words)
    words.split[0]
end

def titleize(a)
	v = %w[the and or over]
    words = a.split(' ')
    words.each do |word|
        word.capitalize! unless v.include? (word)
    end
    words[0].capitalize!
    words.join(' ')
    
end

