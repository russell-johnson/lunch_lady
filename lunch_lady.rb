@menu_item = {
	chicken: 5.00,
	beef: 4.00, 
	fruitbowl: 1.00,
	potatoes: 1.00,
	veggies: 0.50,
	chips: 0.75
}
def lunch_choice
	puts """What do you want to eat?
					chicken--$5.00
					beef--$4.00
					fruitbowl--$1.00"""
	@entree = gets.strip.downcase
	puts """What would you like for your first side?
					potatoes--$1.00
					veggies--$0.50
					chips--$0.75"""
	@side1 = gets.strip.downcase
	puts """What would you like for your second side?
					potatoes--$1.00
					veggies--$0.50
					chips--$0.75"""
	@side2 = gets.strip.downcase
	total = @menu_item[@entree.to_sym] + @menu_item[@side1.to_sym] + @menu_item[@side2.to_sym]
	puts "Your order is:#{@entree} w/ #{@side1} & #{@side2}."
	puts "Your total is $#{total}"

end


lunch_choice
