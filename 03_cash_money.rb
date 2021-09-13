# Write a method called calculate_tax_payable which takes a single argument called income.

# Use the tax brackets shown below to calculate tax payable on income,
# and then calculate the tax payable as a percentage of the income.
# The results should be returned in a hash containing a key called percentage_of_income
# and a key called tax_payable.

# Tax brackets:
# $0 – $18,200 Nil
# $18,201– $37,000 19c for each $1 over $18,200
# $37,001 - $87,000 $3,572 plus 32.5c for each $1 over $37,000
# $87,001 - $180,000 $19,822 plus 37c for each $1 over $87,000
# $180,001 and over $54,232 plus 45c for every $1 over $180,000
# Example hash output from a call to calculate_tax_payable(180101.00)

# {:percentage_of_income=>30.13722855508853, :tax_payable=>54277.45}

def calculate_tax_payable(income)
  x = { percentage_of_income: 0, tax_payable: 0 }

  if income <= 18_200
  elsif income > 18_200 && income <= 37_000
    x[:tax_payable] = (income - 18_200) * 0.19
  elsif income > 37_000 && income <= 87_000
    x[:tax_payable] = 3572 + ((income - 37_000) * 0.325)
  elsif income > 87_000 && income <= 180_000
    x[:tax_payable] = 19_822 + ((income - 87_000) * 0.37)
  else
    x[:tax_payable] = 54_232 + ((income - 180_000) * 0.45)
  end
  x[:percentage_of_income] = x[:tax_payable] * 100 / income
  x
end

def save_to_file(tax_info)
    puts "You have #{tax_info[:tax_payable]} tax payable"
    puts "You will be taxed #{tax_info[:percentage_of_income]}%"
end


save_to_file(calculate_tax_payable(180_101))
foo = calculate_tax_payable(123)
save_to_file(calculate_tax_payable(180_101))




# After correctly returning the right amounts, make a new method called save_to_file which
# takes a single argument which is the hash returned by calculate_tax_payable

# this method is supposed to save to a text file the person's name,
# their percentage_of_income and their tax_payable in an easy to read format.
