def iterations(n)
  (1..n).each_with_index do |i|
    puts "Length: #{i}, Max # of iterations: #{i}"
  end
end

iterations(10)
