def substrings(text, substrings)
  text.split.each_with_object(Hash.new(0)) do |word, result|
    substrings.each do |substr|
      result[substr] += 1 if word.match?(substr)
    end
  end
end
