# result : 6857
# -----------------------------------------------------------------

include Math

def largest_prime_factor1(number)
  start = Time.now
  n = 2
  factors = []
  quotient = number 
  while quotient != 1
    if quotient % n == 0
      factors << n
      quotient = quotient / n
    end
    n += 1
  end
  finish = Time.now
  "largest prime factor is: #{factors[-1]}, calculated in #{(finish - start) * 1000 } ms."
end

## Result calcualeted in ~ 1.780427 ms.

# -----------------------------------------------------------------

# def lowest_prime_factor(num)
#   (2..num).each { |i| break i if (num % i == 0) }
# end

def largest_prime_factor2(num)
  start = Time.now
  limit = num
  factors = []
  product = 1
  while product != limit
    factors << (prime = (2..num).each { |i| break i if (num % i == 0) })
    num = num / prime
    product *= prime
  end
  finish = Time.now
  "largest prime factor is: #{factors[-1]}, calculated in #{(finish - start) * 1000 } ms."
end

## Result calcualeted in ~ 3.352068 ms.
## But here facotrs array contains all prime factors. 
