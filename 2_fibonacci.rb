# Return nth value in fibonacci sequence.
def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  fib(n-2) + fib(n-1)
end

# Return array of fibonacci sequence whose values do not exceed limit.
def fib_array(limit)
  array = []
  while (value = fib(array.size)) < limit
    array << value
  end
  return array
end

def sum_even_fib1(limit)
  start = Time.now
  sum = fib_array(limit).select { |i| i % 2 == 0 }.inject(0) { |sum, i| sum + i }
  finish = Time.now
  "result: #{sum}, calculated in #{(finish - start) * 1000 } ms."
end

# time  ~ 4931.522787 ms.
# -----------------------------------------------------------------

def sum_even_fib2(limit)
  start = Time.now
  fib_array = [1, 2]
  while (value = fib_array[-1] + fib_array[-2]) < limit
    fib_array << value
  end
  result = fib_array.select { |i| i % 2 == 0 }.inject(0) { |sum, i| sum + i }
  finish = Time.now
  "result: #{result}, calculated in #{(finish - start) * 1000 } ms."
end

# time ~ 0.043861 ms.
