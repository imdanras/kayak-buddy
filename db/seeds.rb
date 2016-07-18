# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### COMMAND TO RUN - rake db:reset db:seed

groups = Group.create([
	{name: 'Fishing', group: 'Fishing', info: 'We love fishing and kayaking'}, 
	{name: 'Camping', group: 'Camping', info: 'Camping and kayaking!'},
	{name: 'Rapids', group: 'Rapids', info: 'EXTREME!'},
	{name: 'Recreational', group: 'Recreational', info: 'Chilling and kayaking, man'},
	{name: 'Lake', group: 'Lake', info: 'Swimming while kayaking'},
	{name: 'Ocean', group: 'Ocean', info: 'Let\'s go see some whales'}
])

User.create(name: 'Steve Smith', password: 'password', gender: 'male', email: 'steve@ga.co', skill_level: 'advanced', city: 'Shoreline', more_info: 'Let\'s go!')
User.create(name: 'Thom Evans', password: 'password', gender: 'male', email: 'thom@ga.co', skill_level: 'beginner', city: 'Columbia City', more_info: 'Hang loose, man')
User.create(name: 'Ryan Rotz', password: 'password', gender: 'male', email: 'ryan@ga.co', skill_level: 'intermediate', city: 'Leshi', more_info: 'Woo!')
User.create(name: 'Steve Smith', password: 'password', gender: 'male', email: 'steve@ga.co', skill_level: 'advanced', city: 'Shoreline', more_info: 'Let\'s go!')
User.create(name: 'John Smith', password: 'password', gender: 'male', email: 'john@ga.co', skill_level: 'intermediate', city: 'Seattle', more_info: 'I am awesome and everybody should know it.')
### 5
User.create(name: 'Janet Johnson', password: 'password', gender: 'female', email: 'janet@ga.co', skill_level: 'expert', city: 'Seattle', more_info: 'Interested in finding extreme friends for extreme kayaking adventures.')
User.create(name: 'Amy Olson', password: 'password', gender: 'female', email: 'amy@ga.co', skill_level: 'beginner', city: 'Burien', more_info: 'Looking to get into kayaking.')
User.create(name: 'Whitney Evans', password: 'password', gender: 'female', email: 'whitney@ga.co', skill_level: 'beginner', city: 'Columbia City', more_info: 'I enjoy leisurely paddles.')
User.create(name: 'Heather Christianson', password: 'password', gender: 'female', email: 'heather@ga.co', skill_level: 'beginner', city: 'Lake Forest Park', more_info: 'Very excited to get out')
User.create(name: 'Caitlin Sale', password: 'password', gender: 'female', email: 'caitlin@ga.co', skill_level: 'beginner', city: 'Bellingham', more_info: 'You wish you were as good as I am.')
### 10




GroupsUsers.create(group_id: 1, user_id: 1)