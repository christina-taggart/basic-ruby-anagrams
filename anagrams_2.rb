def anagrams_for(word, dict)
  dict.select {|dict_word| is_anagram?(dict_word, word)}
end

def is_anagram?(first_word, second_word)
  alphabetize(first_word) == alphabetize(second_word)
end

def alphabetize(word)
  word.downcase.chars.sort
end

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