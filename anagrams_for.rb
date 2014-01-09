def anagrams_for(word, dictionary)
  anagram_array = []
  dictionary.map do |word_in_dictionary|
    if is_anagram?(word_in_dictionary, word)
      anagram_array << word_in_dictionary
    end
  end
  anagram_array
end

def canonical(word)
  canonized = word.downcase.split('').sort.join
  canonized
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end


p anagrams_for("cat", ["act","hat","tca"])

dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']

# If the input word happens to be in the dictionary, it should be in the the returned array, too.
# The list should also be case-insensitive.
p anagrams_for('acres', dictionary) == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('ACRES', dictionary) == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('Cesar', dictionary) == ['acres', 'cares', 'Cesar', 'races']

# Although "sacre" is not *in* the dictionary, several words in the dictionary are anagrams of "sacre"
p anagrams_for('sacre', dictionary) == ['acres', 'cares', 'Cesar', 'races']

# Neither the input word nor the words in the dictionary need to be valid English words
p anagrams_for('etlsm', dictionary) == ['smelt', 'melts', 'etlsm']

p anagrams_for('unicorn', dictionary) == []