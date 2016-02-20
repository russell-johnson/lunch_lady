@menu_item = {
	chicken: 5.00,
	beef: 4.00, 
	fruitbowl: 1.00,
	potatoes: 1.00,
	veggies: 0.50,
	chips: 0.75
}
def lunch_choice
	puts """What would you like for your second side?
					potatoes--$1.00
					veggies--$0.50
					chips--$0.75"""
	@side2 = gets.strip.downcase
	total = @menu_item[@entree.to_sym] + @menu_item[@side1.to_sym] + @menu_item[@side2.to_sym]
	puts "Your order is:#{entree} w/ #{side1} & #{side2}."
	puts "Your total is $#{total}"

end

def what_you_want
	puts """What do you want to eat?
					chicken--$5.00
					beef--$4.00
					fruitbowl--$1.00"""
	@entree = gets.strip.downcase
	if @entree == "chicken"
		what_side_you_want
	else 
		puts "Lets try this again."
	end
end

def what_side_you_want
	puts """What would you like for your first side?
					potatoes--$1.00
					veggies--$0.50
					chips--$0.75"""
	@side1 = gets.strip.downcase
	if @side1 == "potatoes", "veggies", "chips"
		what_side2_you_want
	else 
		puts "Are you sure you are spelling that right?"
		what_side_you_want
	end
end
what_you_want
