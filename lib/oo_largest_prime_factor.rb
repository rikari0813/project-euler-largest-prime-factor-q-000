class LargestPrimeFactor

  def initialize(limit)
    @limit = limit
  end

  def number
    largest_prime_factor(@limit)
  end

end