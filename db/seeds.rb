# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#


# Create some restaurants
restaurants = ['Rice n Spice', 'Sushi Maru', 'Red Robin', 'Taco Time', 'Facing East',
  'Pot Belly', 'Sarduchi\'s', 'Broiler Bay', 'Five Guys Burgers', 'Bellevue Brewery',
  'Met Market', 'The Rock', 'Tap House']

restaurants.each do |name|
  Restaurant.where(name: name).first_or_create!
end
