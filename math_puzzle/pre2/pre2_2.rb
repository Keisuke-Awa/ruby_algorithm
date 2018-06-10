# メモ化と階乗を用いた組み合わせ計算
@memo = [1]
def factorial(n)
  return @memo[n] if @memo[n]
  @memo[n] = n * factorial(n - 1)
end

def combination(n, r)
  factorial(n) / ( factorial(r) * factorial(n - r) )
end

puts combination(5, 3)
