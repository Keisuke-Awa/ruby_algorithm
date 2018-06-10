require 'benchmark'

## 1つのテーブルに配置できる最大の人数が10人の時、100人が1つ以上のテーブルに分かれて座る人数のパターンを求めてください。

Benchmark.bm 10 do |r|
  r.report "pre1_3" do
    MAX_TABLE_PEOPLE, PEOPLE_NUM = 10, 100

    table = Array.new(MAX_TABLE_PEOPLE + 1) {Array.new(PEOPLE_NUM + 1) {0}}

    0.upto(MAX_TABLE_PEOPLE) { |i| table[i][0] = 1 }

    1.upto(MAX_TABLE_PEOPLE) do |i|
      2.upto(PEOPLE_NUM) do |j|
        if (i >= 2) && (j >= 1)
          table[i][j] = table[i][j - 1]
        end
        table[i][j] += table[i - 1][j] if i > 2
      end
    end

    puts table[MAX_TABLE_PEOPLE][PEOPLE_NUM]

  end
end


