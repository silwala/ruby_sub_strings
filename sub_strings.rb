dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string_to_check, dictionary)
  dictionary.reduce(Hash.new(0)) do |word_count, word|
    check = true
    downcase_string = string_to_check.downcase
    while check
      if downcase_string.include?(word.downcase)
        word_count[word] += 1
        downcase_string.sub!(word, "")
      else
        check = false
      end
    end
    word_count
  end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
