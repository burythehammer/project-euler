# solution_5.rb

# https://projecteuler.net/problem=5

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Answer: 232792560

# VERY brute force-y, there are smarter ways to do it if you prime factorise
def solution5
  n = 20
  n += 20 until divisible_1_to_20(n)
  n
end

def divisible_1_to_20(n)
  (11..20).each { |i| return false if (n % i != 0) }
  true
end

require_relative 'print_solution'
print_solution(5, 232_792_560)
