# Release 0 : Pseudocode
# INPUT: word, dictionary
# OUTPUT: return elements in dictionary that are anagrams of word
# 1) Take word, make it lowercase, split it by character, and sort alaphabetically.
# 2) Iterate over the dictionary, so for each element: make it lowercase, split it by character, and sort alaphabetically.
# 3) Compare word to elements in dictionary.
# 4) Return matches in the original dictionary

def anagrams_for(word, dictionary)
        split_word = word.downcase.split(//).sort
        dictionary.select{|entry| entry.downcase.split(//).sort == split_word}
end

 dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']

p anagrams_for('acres', dictionary)   == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('ACRES', dictionary)   == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('Cesar', dictionary)   == ['acres', 'cares', 'Cesar', 'races']