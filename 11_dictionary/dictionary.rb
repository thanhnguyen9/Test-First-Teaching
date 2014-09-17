class Dictionary
    def initialize
        @hash = {}
    end
  
    def entries
        @hash
    end
  
    def add(new_entry)
        if new_entry.is_a? String
            @hash[new_entry] = nil
        elsif new_entry.is_a? Hash
            new_entry.each { |noun, definition| @hash[noun] = definition}
        end
    end
  
    
    def keywords
        @hash.keys.sort
    end
    
    def include?(word)
        if @hash.has_key?(word)
            true
        else
            false
        end 
    end
    
    def find(x)
        answer={}
        @hash.each do |key,value|
            if x[0..1] == key[0..1]
                answer[key]=value
            end
            
        end
        return answer
    end


def printable
    @hash.map do |key_val|
        %Q([#{key_val.first}] "#{key_val.last}")
    end.sort.join("\n")
end




end