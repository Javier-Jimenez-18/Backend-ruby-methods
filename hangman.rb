# (2) Write a program hangman.rb that contains a function called hangman.
# The function's parameters are a word and an array of letters.  It returns a
# string showing the letters that have been guessed.  Call the function from
# within your program so that you know that it works.

# Example: hangman("bob",["b"]) should evaluate to "b_b"
# Example: hangman("alphabet",["a","h"]) should return "a__ha___"

def hangman(word, letters)
    # create string of guessed letters to output
    guessed_letters = ""
    # convert the input string word into an array of lower case characters
    chars_array = word.downcase.chars

    # iterate through array of characters and check if each character is in the
    # letters array
    chars_array.each do |char|
        # if it is included, append character to guessed_letters string
        if letters.include? char
            guessed_letters << char
        # else append the "_" character to guessed_letters string
        else
            guessed_letters << "_"
        end
    end
    # return output string of guessed letters
    guessed_letters
end

# call the function hangman to test that it works
puts 'hangman("bob", ["b"]) outputs:'
puts hangman("bob", ["b"])
puts "\n"
puts 'hangman("alphabet", ["a", "h"]) outputs:'
puts hangman("alphabet", ["a", "h"])
puts "\n"
puts 'hangman("BOB", ["b"]) outputs:'
puts hangman("BOB", ["b"])
puts "\n"
puts 'hangman("Ruby", ["r", "u", "y"] outputs:)'
puts hangman("Ruby", ["r", "u", "y"])
puts "\n"
