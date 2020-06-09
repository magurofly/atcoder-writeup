# https://atcoder.jp/contests/dp/tasks/dp_a

n = gets.to_i - 1
h = gets.split.map(&:to_i)

=begin

DPで解く。

i+1, i+2 なので、一つ前と２つ前のコストだけを覚えていればおｋ
フィボナッチ数列のDPと同じ形

c1: 一つ前
c2: ２つ前

=end


c1, c2 = (h[0] - h[1]).abs, 0
2.upto(n) do |i|
	c = [
		c1 + (h[i-1] - h[i]).abs,
		c2 + (h[i-2] - h[i]).abs
	].min
	c2, c1 = c1, c
end

p c1
