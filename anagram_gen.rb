def anagram_generator(word)
	letters = word.downcase.split("")
	anagrams = letters.permutation.to_a
	anagrams.map! {|letters| letters.join("") }
	anagrams.uniq
end

p anagram_generator("apple")
p anagram_generator("happy")
p anagram_generator("devbootcamp")

