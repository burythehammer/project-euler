# solution_2.rb
def solution2
  # beginning terms
  fib_1 = 1
  fib_2 = 2
  sum = 2

  loop do
    fib_new = fib_1 + fib_2
    fib_1 = fib_2
    fib_2 = fib_new
    return sum if fib_new > 4_000_000
    sum += fib_new if fib_new.even?
  end
end

require 'benchmark'

actual_solution = 0
expected_solution = 4_613_732
benchmark_time = Benchmark.realtime { actual_solution = solution2 } * 1000

puts "Solution 2 answer = #{actual_solution}"

if actual_solution == expected_solution
  puts 'Correct! :)'
else
  puts 'Incorrect! :('
end

puts "Benchmark: #{ benchmark_time } milliseconds"
