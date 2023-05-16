def loan_calc()
  puts "Enter your loan amount."
  loan_amnt = gets.chomp
  until loan_amnt.to_f.to_s == loan_amnt
    puts "Enter a valid value"
    loan_amnt = gets.chomp
  end
  puts "Enter your APR"
  j = gets.chomp
  until j.to_f.to_s == j
    puts "Enter a valid APR value"
    j = gets.chomp
  end
  puts "Enter your loan duration"
  n = gets.chomp

  until n.to_i.to_s == n
    puts "Enter a valid number of months"
    n = gets.chomp
  end

  loan_amnt = loan_amnt.to_f
  j = j.to_f
  n = n.to_i
  k = j / 12


  m = loan_amnt * (k/(1-(1+k)**(-n)))
  return m

end