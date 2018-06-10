require 'benchmark'

## 1つのテーブルに配置できる最大の人数が10人の時、100人が1つ以上のテーブルに分かれて座る人数のパターンを求めてください。

MAX_TABLE_PEOPLE, PEOPLE_NUM = 10, 100

def check(remain:, pre:)

  return 0 if remain < 0
  return 1 if remain == 0

  count = 0
  pre.upto(MAX_TABLE_PEOPLE) do |i|
    count += check(remain: remain - i, pre: i)
  end
  count
end

Benchmark.bm 10 do |r|
  r.report "pre1_1" do
    puts check(remain: PEOPLE_NUM, pre: 2)
  end
end


