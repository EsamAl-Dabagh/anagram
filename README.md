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
* The first step of the process was to decide upon how to create this app. My first inclination was to use JavaScript/React. However, given the time constraints I believed that creating a command-line app in Ruby was the more sensible choice. 
* Next, I wanted to solidify my mental model of how I would approach this problem. This resulted in a version of the domain model (shown above).
* From the specification I could see that there would be three main parts to solving this problem; searching using a user-supplied word, handling the supplied list of words, and displaying the relevant anagrams. 
* When writing, I began from the 'bottom' and worked my way 'up'. Starting with creating the `Printer` module, then the `WordList` class, then finally the `Anagram` class. This ensured that `Printer` and `WordList` were created in isolation. 
* To allow for best possible extensibility, I used dependency injection when using `WordList` within `Anagram`. This allowed me to set the source of the WordList manually if need be (for testing for example) or to change/update the source at a later date if need be. 
* Handling the given list of words: I downloaded the list of words as a `.txt` file and saved it in the root directory. I was then able to use `File.foreach` to iterate over the file line-by-line. For each iteration, I pushed the word into an array. 
    * For testing purposes I created a separate, smaller `.txt` file in `spec/support/`, this way when testing it wouldn't be required to iterate over thousands of lines every time. 
* To identify an anagram: 
    * Convert user-supplied (subject) word to lowercase, split it up into characters, alphabetise characters, join character back into string. Store as `processed_subject_word`.  
    * Iterate over of the list of words, and following the same steps. Store as `processed_list_item`.
    * If `processed_subject_word` and `processed_list_item` match, we have an anagram. 

###### Ways to improve
* Dealing with edge cases:
    * Dealing with user entering something other than a string. 
    * Dealing with hypens.  
* Printer should give feedback if there aren't any anagrams found. 
* Reduce long conditional on line 19 of `Anagram`.

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
Acer
Care
Acre
```

### Tests
This solution was TDD'd using RSpec.
**To run the tests, run `rspec` from the command line.** 

100% test coverage. Coverage provided by SimpleCov.