
def canonical(word)
	array = word.downcase.split("").sort!
end

def is_anagram?(word1, word2)
	canonical(word1) == canonical(word2)
end



def anagrams_for(word, dictionary)
	answer = [word]
	dictionary.each { |check| 
		answer.push(check) if is_anagram?(word, check)
	}
	puts answer
end





dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm', 'spare', 'pears', 'parse', 'spear']

anagrams_for("acres", dictionary)
anagrams_for("Pares", dictionary)








