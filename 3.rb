arr = [0]

num = 1
while num < 100 do
  arr << num

  num = arr[-2] + arr[-1]
end

puts arr

