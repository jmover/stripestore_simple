require_relative 'stripe_keys'

# Question 6, 1 of 2: Declaring the coupon
coupon = { code: 'SUMMERSALE2016', discount_in_cents: 50}

# Question 1: Product data
products = [
	{ description: "Hamster", price: 300},
	{ description: "Kitten", price: 550},
	{ description: "Puppy", price: 999},
	{ description: "Tarantula", price: 2049}
]

# Question 2: Product printout
# Using each_with_index is also acceptable
# They will make this prettier in Question 5,
# multiple approaches are acceptable for that

puts "AVAILABLE PRODUCTS"
index = 0
while index < products.length do
	puts "#{index}. #{products[index]}"
	index += 1
end

# Question 3: User chooses a product
# For Question 7, they will let the user
# choose products repeatedly to add to the cart,
# which should be an array of integers. The total
# is calculated by looping through the cart and
# adding up the amounts.
puts "Enter the number of the product you want to buy:"
user_choice = gets.to_i
total = products[user_choice][:price]
puts "Your total is #{total}."

# Question 6, 2 of 2: Applying the coupon
puts "Do you have a coupon? (y/n)"
user_has_coupon = gets.chomp

if user_has_coupon == "y"
	puts "Enter the coupon code:"
	coupon_code = gets.chomp
	if coupon_code == coupon[:code]
		total -= coupon[:discount_in_cents]
		puts "Your total is now #{total}."
	else
		puts "No coupon applied."
	end
end

# Question 4: Card information
card = {}
puts "Enter your credit card number:"
card[:number] = gets.chomp
puts "Enter your expiration month:"
card[:exp_month] = gets.chomp
puts "Enter your expiration year:"
card[:exp_year] = gets.chomp
puts "Enter your CVC:"
card[:cvc] = gets.chomp

# TODO: Actually charge the customer!

puts "Your... card has been charged."
