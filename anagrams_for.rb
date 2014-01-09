=begin
Pseudocode:

INPUT: a given word (w) and a dictionary (dict)
OUTPUT: any anagrams of w in dict

Iterate over dict
	Check w against each dict entry
		Split w into letters, sort those.
		Split dict entry into letters, sort those.
		If w matches dict entry, keep it. Otherwise, delete 

Return array of matches
=end

dict = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']
def anagrams_for(word, dictionary)
	split_word = word.downcase.split('').sort
	dictionary.select{|entry| entry.downcase.split('').sort == split_word}
end

p anagrams_for('acres', dict)   == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('ACRES', dict)   == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('Cesar', dict)   == ['acres', 'cares', 'Cesar', 'races']
