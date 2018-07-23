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

puts "\n\n"
puts "#{'Product'.ljust(15, ' ')} - #{'Number'.ljust(10, ' ')} - #{'Price'.ljust(10, ' ')} - #{'Product Sum'.ljust(12, ' ')}"
puts '-' * 56

sum = 0
products_h.each do |product_name, product|
  product.each do |number, price|
    product_sum = number * price
    a = [] << "#{product_name.ljust(15, ' ')}" \
      << "#{number.to_s.ljust(10, ' ')}" \
      << "#{price.to_s.ljust(10, ' ')}" \
      << "#{product_sum.to_s.ljust(12, ' ')}"

    puts a.join(' - ')
    sum += product_sum
  end
end
puts
puts "Total: #{sum}."

