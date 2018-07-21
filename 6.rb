products_h = {}

loop do
  print 'Enter product name (or "stop" for exit): '

  name = gets.chomp

  break if name == 'stop'
  if !products_h.has_key?(name)

    print 'Enter the number of product instances: '
    number = gets.chomp.to_i

    print 'Enter cost the price of one: '
    price = gets.chomp.to_f

    products_h[name] = {
      number => price
    }

  else
    puts 'The product already exists! Enter another name!'
  end

  puts
end

sum = 0
products_h.each_value do |product|
  product.each do |number, price|
    sum += number * price
  end
end

puts "Total: #{sum}."

