def anagrams_for(word, array)
  test = word.downcase.split("").sort.join("")
  reference = array.map { |candidate| candidate.downcase.split("").sort.join("") }
  ans = []
  reference.each_with_index do |possible, index|
     ans << index if possible == test
  end
  answers = ans.map {|x| array[x]}
end

dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']
p anagrams_for('acres', dictionary)   == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('ACRES', dictionary)   == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('Cesar', dictionary)   ==  ['acres', 'cares', 'Cesar', 'races']

# Although "sacre" is not *in* the dictionary, several words in the dictionary are anagrams of "sacre"
p anagrams_for('sacre', dictionary)   == ['acres', 'cares', 'Cesar', 'races']

# Neither the input word nor the words in the dictionary need to be valid English words
p anagrams_for('etlsm', dictionary)  == ['smelt', 'melts', 'etlsm']

p anagrams_for('unicorn', dictionary) == []