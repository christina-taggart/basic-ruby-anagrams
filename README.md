# Anagrams 2 Generating Anagrams 
 
##Learning Competencies 

* Modeling a simple real-world procedure in Ruby
* Method definition, arguments, and return values
* Looping
* Basic performance analysis

##Summary 

An **anagram** is a word formed by rearranging the letters of another word, e.g., *iceman* is an anagram of *cinema*.

We're going to write a method called `anagrams_for` that takes as its input a word and an array of words, representing a dictionary, and returns an array consisting of all the anagrams of the input word.

You should look back and possibly re-use some of the code you wrote in your `is_anagram?` method.  You may or may not re-use the method itself, but at the very least you'll want the code handy for reference.


 

##Releases
###Release 0 : Pseudocode Implementation of `anagrams_for`

Before you start writing a single line of Ruby code, sit down and ask yourself, "Given a word and a dictionary, could I create a list of anagrams of that word by hand, tediousness aside?"

Your `anagrams_for` method will be a model of you performing this task, so the more clearly you understand how to do this task yourself the easier it will be for you to write the code.  Do you understand it well enough to teach someone else how to create an anagram list?  How do you know the other person understands how to create an anagram list?

Write pseudocode that outlines your own mental procedure in a way that's easy for a human to both understand and translate into their favorite programming language.

###Release 1 : Ruby Implementation of `anagrams_for`

Write a method called `anagrams_for` that takes as its input a word and an array of words, representing a dictionary, and returns an array consisting of all the anagrams of the input word.  Like `is_anagram?`, the method should be *case insensitive*.  Remember, a word is always an anagram of itself.

`anagrams_for` should return an empty arrray (`[]`) if no anagrams are found in the dictionary.  You don't have to worry about the order of the returned `Array`.

For example,

```ruby
# The dictionary is just an arbitrary collection of strings.
# It need not contain English words, e.g., 'etlsm'.
dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']

# If the input word happens to be in the dictionary, it should be in the the returned array, too.
# The list should also be case-insensitive.
anagrams_for('acres', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']
anagrams_for('ACRES', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']
anagrams_for('Cesar', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']

# Although "sacre" is not *in* the dictionary, several words in the dictionary are anagrams of "sacre"
anagrams_for('sacre', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']

# Neither the input word nor the words in the dictionary need to be valid English words
anagrams_for('etlsm', dictionary)   # => ['smelt', 'melts', 'etlsm']

anagrams_for('unicorn', dictionary) # => []
```

##Optimize Your Learning 

Consider the following:
  * Is my program doing any duplicate work?  Is there a way to remove that duplicate work?
  * Am I iterating over the dictionary multiple times or just once?
  * If I'm re-using `is_anagram?`, what happens if I call `is_anagram?(word1, word2)` and then later call `is_anagram?(word1, word100)`?  Is there any duplicate work?

##Resources

* [Anagram on Wikipedia](http://en.wikipedia.org/wiki/Anagram)