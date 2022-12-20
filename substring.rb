def substring(string, dic)
    string = string.downcase
    storage = Hash.new
    dic.each do |word|
        if string.scan(/#{word}/).size > 0
            storage[word] = string.scan(/#{word}/).size
        end
    end
    puts storage
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("Howdy partner, sit down! How's it going?", dictionary)