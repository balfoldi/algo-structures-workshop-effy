class Recursion
  def self.rec_sum(n)
    n.to_i == 0 ? 0 : n.to_i + rec_sum(n.to_i - 1)
  end

  def self.sum_digits(n)
    return 0 if n == 0

    n % 10 + sum_digits(n / 10)
  end
end
