class RPNCalculator
    
    attr_accessor :a
    
    def initialize
        @a = []
    end
    
    def push(num)
        @a << num
    end

    def value
        @a.last
    end
    
    def plus
        if @a.size >= 2
            sum = @a.pop + @a.pop
            @a << sum
        else
            raise "calculator is empty"
        end
    end

    def minus
        if @a.size>=2
            sec=@a.pop
            first=@a.pop
            diff=first-sec
            @a << diff
		else
            raise "calculator is empty"
        end
    end

    def divide
        if @a.size>=2
            x1=@a.pop.to_f
            x2=@a.pop.to_f
            x3=x2 / x1
            @a << x3
        else
            raise "calculator is empty"
        end
    end

    def times
        if @a.size >= 2
            x3 = @a.pop * @a.pop
            @a << x3
        else
            raise "calculator is empty"
        end
    end

    def tokens(str)
        y = []
        arr = str.split(' ')
        arr.each do |x|
            if (x == "+" || x == "-" || x == "*" || x == "/")
                y << x.to_sym
            else
                y << x.to_i
            end
        end
        y
    end
   
   def evaluate(string)
        
        tokens(string).each do |x|
            if x == :+
                plus
            elsif x == :-
                minus
            elsif x == :/
                divide
            elsif x == :*
                times
            else
                push(x)
            end
        end
        value
    end
end