# pseudocode

# input: word, array of words (dictionary)
# output: array of words (anagrams of word that are in dictionary)

# take the canonical form of input word
# take canonical form of each dictionary word
# compare the two canonical forms
# if they are equal, push the original dictionary word to an array
# if they are not equal, do nothing
# (opt.) test to see if every word in result array passes #is_anagram?


def is_anagram?(first_word, second_word)
  canonical(first_word) == canonical(second_word)
end

def canonical(word)
  word.downcase.split("").sort.join("")
end

def anagrams_for(word, dictionary)
  anagrams = []
  canonical_word = canonical(word)
  dictionary.each do |word|
    canonical(word)
  end
end


# driver code
p is_anagram?("cinema", "iceman") == true
p is_anagram?("Cinema", "iceman") == true
p is_anagram?("person", "pencil") == false
p is_anagram?("cinema", "iceman") == true
p is_anagram?("Cinema", "iceman") == true

p canonical("cinema") == "aceimn"
p canonical("Cinema") == "aceimn"