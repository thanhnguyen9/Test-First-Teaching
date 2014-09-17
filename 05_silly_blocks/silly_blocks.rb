def reverser
    words = yield.split(' ')
    final=[]
    words.each do |n|
        final.push(n.reverse)
    end
    final.join(' ')
end

def adder(num=1)
    yield + num
end

def repeater(num=1, &block)
    num.times &block
end