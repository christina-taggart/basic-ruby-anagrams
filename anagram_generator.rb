# Generates a dictionary array from dictionary.txt:
my_dictionary = []
File.open("dictionary.txt").each_line do |line|
  my_dictionary << line.rstrip
end

#-----Anagram methods!-----
def anagrams_for(word, dictionary)
  dictionary.select {|dictionary_word| is_anagram?(dictionary_word, word) }
end

def canonical(string)
  string.downcase.split("").sort!
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end

#-----DRIVERS-----
p anagrams_for("apple", my_dictionary)
p anagrams_for("ruby", my_dictionary)
p anagrams_for("computer", my_dictionary)
p anagrams_for("acres", my_dictionary)
p anagrams_for("sacre", my_dictionary)
