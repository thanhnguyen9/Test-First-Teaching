class Array
    def sum
        sum = 0
        self.each {|num| sum += num}
        sum
    end
    
    def square
        self.map {|num| num * num}
    end
    
    def square!
        self.map! {|num| num * num}
    end
end