puts "What phrase would you like to analyze today?"
phrase = gets.chomp.to_s
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)
    results = {}
    results.default = 0
    words = phrase.downcase.split(" ").to_a
    
    dictionary.each do |word|
        for str in words
            if str.include?(word)
            results[word] += 1
        end
    end
    end
    p results
end

substrings(phrase, dictionary)