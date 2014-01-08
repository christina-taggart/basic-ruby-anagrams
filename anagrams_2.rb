def anagrams_for(passed_word, dictionary)
  anagrams = []

  dictionary.each do |dict_word|
    anagrams << dict_word if dict_word.downcase.each_char.to_a.sort.join == passed_word.downcase.each_char.to_a.sort.join
  end

  anagrams

end

dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']

# If the input word happens to be in the dictionary, it should be in the the returned array, too.
# The list should also be case-insensitive.
p anagrams_for('acres', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('ACRES', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('Cesar', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']

p # Although "sacre" is not *in* the dictionary, several words in the dictionary are anagrams of "sacre"
p anagrams_for('sacre', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']

p # Neither the input word nor the words in the dictionary need to be valid English words
p anagrams_for('etlsm', dictionary)   # => ['smelt', 'melts', 'etlsm']

p anagrams_for('unicorn', dictionary) # => []
