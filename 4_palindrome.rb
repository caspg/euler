# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
#
# Solution: 906609

def palindrome?(input)
  input.to_s == input.to_s.reverse
end

# Return the largest palindrome made from the product of two 3-digits number.
def largest_palindrome_product
  start = Time.now
  palindromes = []
  999.downto(900) do |i|
    999.downto(i) do |j|
      n = i * j 
      palindromes << n if palindrome?(n)
    end
  end
  finish = Time.now
  "largest palindrom is: #{palindromes.max}, calculated in #{(finish - start) * 1000 } ms."
end

## Result calcualeted in ~ 439.130074 ms.  -- 999.downto(limit = 100)
## Result calcualeted in ~ 13.5470940 ms.  -- 999.downto(limit = 900)
