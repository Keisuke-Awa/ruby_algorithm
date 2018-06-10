# 再起処理を用いた組み合わせ計算
@memo = {}
def combination(n,r)
  return @memo[[n,r]] if @memo[[n,r]]
  return 1 if (r == 0) || (r == n)

  @memo[[n ,r]] = combination(n - 1, r - 1) + combination(n - 1, r)
end


puts combination(100,32)
