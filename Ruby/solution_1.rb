# solution_1.rb
def solution1
  sum = 0
  i = 0

  loop do
    sum += i if i % 5 == 0 || i % 3 == 0
    i += 1
    break if (i == 1000)
  end

  sum
end

require 'benchmark'

actual_solution = 0
expected_solution = 233_168
benchmark_time = Benchmark.realtime { actual_solution = solution1 } * 1000

puts "Solution 1 answer = #{actual_solution}"

if actual_solution == expected_solution
  puts 'Correct! :)'
else
  puts 'Incorrect! :('
end

puts "Benchmark: #{ benchmark_time } milliseconds"

