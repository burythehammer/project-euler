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

require_relative 'print_solution'
print_solution(2, 4_613_732)
