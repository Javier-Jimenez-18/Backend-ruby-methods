# (6) Create a program block_function.rb.  It should have a function do_calc
# that calls a block using a yield statement.  The yield statement will pass the
# numbers 7 and 9 to a block, and then will print out the result.  Call the
# do_calc function twice in your program. The first time, pass a block that adds
# the two numbers. The second time, pass a block that multiplies the two
# numbers.  Your program should print out 16 and 63.

def do_calc(num1, num2)
    yield(num1, num2)
end

# pass a block to do_calc that adds 7 and 9
puts "do_calc(7, 9) outputs 7 + 9 = 16:"
do_calc(7, 9) { |x, y| puts x + y }
# pass a block to do_calc that multiplies 7 and 9
puts "do_calc(7, 9) outputs 7 * 9 = 63:"
do_calc(7, 9) { |x, y| puts x * y }
