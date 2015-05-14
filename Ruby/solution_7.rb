# solution_7.rb

# https://projecteuler.net/problem=7

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

# Answer: 104_743

def solution7
  prime_numbers = 0

  sieve.each_with_index do |is_prime, prime|
    prime_numbers += 1 if is_prime
    return prime if prime_numbers == 10_001
  end
end

def sieve
  sieve = declare_sieve
  sieve[0] = false
  sieve[1] = false

  i = 2 # starts at first prime

  while i < Math.sqrt(sieve.length)
    j = i # no point starting below current prime
    while i * j < sieve.length
      sieve[i * j] = false
      j += 1
    end

    i = next_prime(sieve, i) # only sieves out primes
  end
  sieve
end

# looks for the next prime in that array
def next_prime(sieve, current_prime)
  sieve.each_with_index { |is_prime, prime| return prime if is_prime && prime > current_prime }
end

def declare_sieve
  array = Array.new(1_000_000)
  array.each_index { |i| array[i] = true }
  array
end

require_relative 'print_solution'
print_solution(7, 104_743)
