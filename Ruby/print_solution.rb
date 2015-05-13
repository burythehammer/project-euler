# print_solution.rb

require 'benchmark'

def print_solution(problem_id, expected_answer)
  actual_answer = 0
  benchmark_time = Benchmark.realtime do
    actual_answer = send("solution#{problem_id}")
  end

  puts "Problem #{problem_id} answer = #{actual_answer}"

  if expected_answer == actual_answer
    puts 'Correct!'
  else
    puts 'Wrong answer!'
  end

  puts "Benchmark: #{ benchmark_time * 1000 } milliseconds"
end
