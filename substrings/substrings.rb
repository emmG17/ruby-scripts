def substrings(text, substrings) 
  text.split.reduce(Hash.new(0)) do |result, word|
    substrings.each do |substr|
      if word.match?(substr)
        result[substr] += 1
      end
    end
    result
  end
end