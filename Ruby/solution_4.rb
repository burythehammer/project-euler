# solution_4.rb

# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2 digit numbers is:
#       9009 (91 * 99)
# Find the largest palindrome made from the product of two 3 digit numbers.

# A fairly naive solution, this tries multiplying every 3 digit pair, 
# checks if it's a palindrome, and keeps a running record of the highest
def solution4
  palindrome = 1000
  (900..999).each do |num1| # checks between 900-999 as likely solutions are probably in this bracket
    (900..999).each do |num2|
      product = num1 * num2
      palindrome = product if palindrome?(product) && product > palindrome
    end
  end
  palindrome
end

def palindrome?(number)
  number = number.to_s
  number.reverse == number
end

puts "solution 4 = #{solution4}"
