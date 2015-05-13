# solution_3.rb

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def solution3
  large_num = 600_851_475_143

  i = 2

  loop do
    large_num /= i if large_num % i == 0
    i += 1
    break if i > large_num / 2
  end

  large_num
end

require 'benchmark'

actual_solution = 0
expected_solution = 6857
benchmark_time = Benchmark.realtime { actual_solution = solution3 } * 1000

puts "Solution 3 answer = #{actual_solution}"

if actual_solution == expected_solution
  puts 'Correct! :)'
else
  puts 'Incorrect! :('
end

puts "Benchmark: #{ benchmark_time } milliseconds"

