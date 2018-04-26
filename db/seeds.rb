# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[['Ramen', 'A flavorful broth with  noodles, and don’t forget the ramen egg!', 
	'1. Boil some water. 2. Prepare your ramen. First, pull the lid of the ramen cup back halfway. Remove any seasoning packets. \
	Next, open the packet and add the seasoning to the ramen. 3. Pour in boiling water. 4. Let it sit and cook. 5. Stir and enjoy!', 15],
	['Srambled eggs', 'A basic breakfast classic.', 
	'1. Beat eggs, milk, salt and pepper in medium bowl until blended.2. Heat butter in large nonstick skillet over medium heat until hot. \
	Pour in egg mixture. As eggs begin to set, gently pull the eggs across the pan with a spatula, forming large soft curds. 3. Continue cooking, remove and serve!', 8],
	['Grilled Cheese Sandwich', 'Bread, butter and Cheddar cheese, the classic sandwich',
	'Preheat skillet over medium heat. Generously butter one side of a slice of bread. Place bread butter-side-down onto skillet bottom and add 1 slice of cheese. \
	Butter a second slice of bread on one side and place butter-side-up on top of sandwich. Grill until lightly browned and flip over; continue grilling until cheese is melted. \
	Repeat with remaining 2 slices of bread, butter and slice of cheese.', 20]
].each do |name, description, instruction, time|
	Recipe.create(
	name: name,
	description: description,
	instruction: instruction,
	time: time
	)
end