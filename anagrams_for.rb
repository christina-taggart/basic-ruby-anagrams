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
