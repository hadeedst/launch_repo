state = 'y'
while state.start_with?('y') 
  
  puts "Please enter an integer?"
  num = gets.chomp
  loop do
    if num.to_i.to_s == num
      num = num.to_i
      break
    else
      puts "Please enter a valid integer"
      num = gets.chomp
    end
  end

  puts "Press 's' to compute the sum or press 'p' to compute the product"
  operation = gets.chomp.downcase
  choices = %w(s p sum product)

  while choices.include?(operation) == false
    puts "enter a valid operation"
    operation = gets.chomp.downcase
  end

  sum_ans = 0
  prod_ans = 1

  if operation == 's'
    num_lst = (1..num)
    num_lst.each do |val|
      sum_ans += val
    end
    puts "The sum of integers up to #{num} is #{sum_ans}"
  end

  if operation == 'p'
    lst = (1..num)
    lst.each do |val|
      prod_ans *= val
    end
    puts "The product of integers up to #{num} is #{prod_ans}"
  end

  puts "Another calculation?"
  state = gets.chomp.downcase
end

puts "Good mathing with you!"

