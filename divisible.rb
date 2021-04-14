# (1) Write a method that returns in an array all the numbers between 1 and 100
# that are divisible by 2 or 3 or 5. Then call the method in your program and
# print out what it returns.  Call the program divisible.rb.

def simplified_fizzbuzz
  # create div_by_2_3_5 output array to store all the numbers between 1 and 100
  # that are divisible by 2 or 3 or 5
  div_by_2_3_5 = []

  # loop through all numbers between 1 and 100 and copy only those
  # that are divisible by 2 or 3 or 5 to output div_by_2_3_5 array
  for num in 1..100 do
    if (num % 2 == 0 || num % 3 == 0 || num % 5 == 0)
        div_by_2_3_5.push(num)
    end
  end
  # return output array
  div_by_2_3_5
end

# call the method simplified_fizzbuzz and print out what it returns.
puts "These are all of the numbers between 1 and 100 that are divisible by 2 or 3 or 5:"
puts simplified_fizzbuzz
