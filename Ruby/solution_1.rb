# solution_1.rb
def solution1
  sum = 0
  number.times do |i|
    sum += i if i % 5 == 0 || i % 3 == 0
    i += 1
    return sum if (i == 1000)
  end
end

require_relative 'print_solution'
print_solution(1, 233_168)
