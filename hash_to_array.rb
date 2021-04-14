# (3) Write a program that collects 5 keys and 5 values from the user, and
# stores them in a hash.  Write a function that accepts the hash as optional
# parameters and prints out an array of keys and an array of values.  Call the
# function within your program so you know it works.
# (Question: Can you find online information on Ruby hash methods that will
# help with this function?)  Call this program hash_to_array.rb.

# define prompt method to prompt the user to enter keys and values
def prompt(request, kind = "string")
    print request + " "
    answer = gets.chomp
    answer = answer.to_i if kind == "number"
    return answer
end

def hash_to_array(hash = {})
    # if there is no hash input parameter (optional), prompt the user for
    # 5 keys and 5 values
    if hash.empty?
        hash = {}
        5.times do |num|
            key = prompt("Please enter a key#{num + 1}: ")
            value = prompt("Please enter a value#{num + 1}: ")
            hash[key] = value
        end
    end
    # print out arrays of the input hash keys and values
    puts "Array of keys: #{hash.keys}"
    puts "Array of values: #{hash.values}"
end

# Call the function within program to show that it works.
# input hash
puts "Output of hash_to_array function with an input hash parameter: "
hash_to_array({"Dodgers" => "2020", "Lakers" => "2020", "Raiders" => "1984"})
puts "\n"
# No input hash
puts "Output of hash_to_array function without an input hash parameter: "
hash_to_array()
