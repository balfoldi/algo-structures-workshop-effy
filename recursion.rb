def rec_sum(n)
  n.to_i == 0 ? 0 : n.to_i + rec_sum(n.to_i - 1)
end
