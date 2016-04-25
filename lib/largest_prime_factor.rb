def is_prime(limit)
  isPrime = true
  cc = 2
  while cc < limit && isPrime
    if limit % cc == 0
      isPrime = false
    end
    cc += 1
  end
  isPrime
end

def largest_prime_factor(limit)
  largest = 2
  tempPrime = 2
  newLimit = limit

  while tempPrime <= newLimit
    if is_prime(tempPrime) && newLimit % tempPrime == 0
      while newLimit % tempPrime == 0
        newLimit = newLimit / tempPrime
      end
      if (tempPrime > largest)
        largest = tempPrime
      end
    end
    tempPrime += 1
  end

  largest

end

