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

require_relative 'print_solution'
print_solution(1, 233_168)
