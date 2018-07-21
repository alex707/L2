vowels_arr = %w(a e i o u y)
letters_h  = {}


('a'..'z').zip(0..25).each do |e1, e2|
  letters_h[e1] = e2 if vowels_arr.include?(e1)
end


puts letters_h

