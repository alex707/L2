print 'Enter day: '
day = gets.chomp.to_i

print 'Enter month: '
month = gets.chomp.to_i

print 'Enter year: '
year = gets.chomp.to_i
puts


def num_days month, year
  case month
  when 1, 3, 5, 7, 8, 10, 12
    return 31
  when 4, 6, 9, 11
    return 30
  when 2
    if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
      return 29
    else
      return 28
    end
  else
    return 0
  end
end
    

number = 0
(0...month).each do |month_num|
  number += num_days(month_num, year)
end

number += day


puts 'The number of the day: ' + number.to_s

