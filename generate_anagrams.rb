class String
  def canonical(word)
    self.downcase.split("").sort == word.downcase.split("").sort ? true : false
  end
end

def is_anagram?(word1, word2)
  word1.downcase.split("").sort == word2.downcase.split("").sort ? true : false
end

# return array consisting of all anagrams of the input word
def anagrams_for(word, *dictionary)

end

p "cato".canonical("taco")
p is_anagram?("cato", "taco")
p "cinema".canonical("IcEMaN")
p is_anagram?("IcEMAN", "CiNEma")

# Release 0: Pseudocode
# To generate anagrams for a given word and a given dictionary array of words
# I should pass the given word through either the is_anagram? or canonical method
# and also pass in one by one each word in the dictionary.
# I should collect all the matches for which anagrams methods return true
# At the end, once I have an array of possible anagrams, return it to the caller