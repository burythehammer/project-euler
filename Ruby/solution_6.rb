# solution_6.rb

# https://projecteuler.net/problem=6

# The sum of the squares of the first ten natural numbers is
# 12 + 22 + ... + 102 = 385

# The square of the sum of the first ten natural numbers is
# (1 + 2 + ... + 10)2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# Answer: 25164150

def solution6
  sum_of_squares = 0
  sum = 0

  (1..100).each do |i|
    sum_of_squares += i * i
    sum += i
  end

  (sum_of_squares - sum * sum).abs
end

require_relative 'print_solution'
print_solution(6, 25_164_150)
