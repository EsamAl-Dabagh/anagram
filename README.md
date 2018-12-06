#Anagram Solver

### The Task
Imagine you are in a work environment, and a colleague has asked you to create a simple interactive application which can solve anagrams.

For a word entered by the user, generate a list of all possible anagrams contained in a given list of words. 

###Domain Model

```
╔═══════════════╗
║ Anagram       ║  
║               ║           ╔═════════════════╗
║ #find         ║ --------> ║ Printer(module) ║
║ #process_word ║           ║ #output         ║
║ #compare      ║           ╚═════════════════╝
╚═══════════════╝
      |  
      |  
      |       
      |   
╔═══════════════╗
║ WordList      ║
║               ║
║ #generate     ║
╚═══════════════╝

```

### User Stories
```
As a user
I want to find anagrams of a specific word
So I can impress my friends
```

### The Process

### How To Use

Clone this repo and navigate to the project folder:

```
git clone [URL]
cd anagrams
```

Open ruby file in irb:
```
2.5.1 :001 > require './lib/anagram.rb'
 => true
```

Create a new instance of Anagram:
```
2.5.1 :002 > anagram = Anagram.new
 => #<Anagram:0x00007fe65c1911b8 @source="../anagrams/wordlist.txt", @word_list=#<WordList:0x00007fe65c191168 @source="../anagrams/wordlist.txt">, @anagram_list=[]>
```

Use #find and pass in the word you want to find an anagram for: 
```
2.5.1 :003 > anagram.find("race")
```

### Tests
This solution was TDD'd using RSpec.
To run the tests, run `rspec` from the command line. 

100% test coverage. Coverage provided by SimpleCov.