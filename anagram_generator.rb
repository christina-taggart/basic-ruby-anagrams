# Generates a dictionary array from dictionary.txt:
my_dictionary = []
File.open("dictionary.txt", "r") do |infile|
  while (line = infile.gets)
    my_dictionary << line.split
  end
end
my_dictionary.flatten!

#-----Anagram methods!-----
def anagrams_for(word, dictionary)
  anagrams = []
  dictionary.each do |dictionary_word|
    anagrams << dictionary_word if is_anagram?(dictionary_word, word)
  end
  anagrams
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
