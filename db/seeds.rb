# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### COMMAND TO RUN - rake db:reset db:seed #####################

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
User.create(name: 'Jim Johnson', password: 'password', gender: 'male', email: 'jim@ga.co', skill_level: 'beginner', city: 'Bellingham', more_info: 'just beginning.')
User.create(name: 'Chris Madison', password: 'password', gender: 'male', email: 'chris@ga.co', skill_level: 'beginner', city: 'Seattle', more_info: 'You wish you were as powerful as me.')
User.create(name: 'Joe Marzullo', password: 'password', gender: 'male', email: 'joe@ga.co', skill_level: 'beginner', city: 'Bellingham', more_info: 'I suck.')
User.create(name: 'Josh McBroom', password: 'password', gender: 'male', email: 'josh@ga.co', skill_level: 'intermediate', city: 'Seattle', more_info: 'What\'s up dude. Just looking to paddle.')
User.create(name: 'Ivar Lee', password: 'password', gender: 'male', email: 'ivar@ga.co', skill_level: 'advanced', city: 'Port Orchard', more_info: 'Sup.')
### 15
User.create(name: 'Scott Heron', password: 'password', gender: 'male', email: 'scott@ga.co', skill_level: 'beginner', city: 'Mount Vernon', more_info: 'Hello.')
User.create(name: 'Brian Hague', password: 'password', gender: 'male', email: 'brian@ga.co', skill_level: 'advanced', city: 'Seattle', more_info: 'Hey.')
User.create(name: 'Paul Gatterdam', password: 'password', gender: 'male', email: 'paul@ga.co', skill_level: 'beginner', city: 'Seattle', more_info: 'Well hello there.')
User.create(name: 'Jamie Karlovich', password: 'password', gender: 'female', email: 'jamie@ga.co', skill_level: 'intermediate', city: 'Seattle', more_info: 'Dancing while kayaking.')
User.create(name: 'Reno McDonald', password: 'password', gender: 'male', email: 'reno@ga.co', skill_level: 'advanced', city: 'Tacoma', more_info: 'Coding while kayaking.')
User.create(name: 'Krista Calderon', password: 'password', gender: 'female', email: 'krista@ga.co', skill_level: 'advanced', city: 'Seattle', more_info: 'Yay kayaking.')
User.create(name: 'Derek Robertson', password: 'password', gender: 'male', email: 'derek@ga.co', skill_level: 'advanced', city: 'Seattle', more_info: 'meh.')
User.create(name: 'Travis Smith', password: 'password', gender: 'male', email: 'travis@ga.co', skill_level: 'intermediate', city: 'Seattle', more_info: 'Hello.')




GroupsUsers.create(group_id: 1, user_id: 1)
GroupsUsers.create(group_id: 1, user_id: 2)
GroupsUsers.create(group_id: 2, user_id: 2)
GroupsUsers.create(group_id: 1, user_id: 3)
GroupsUsers.create(group_id: 3, user_id: 5)
GroupsUsers.create(group_id: 3, user_id: 4)
GroupsUsers.create(group_id: 4, user_id: 3)
GroupsUsers.create(group_id: 6, user_id: 3)
GroupsUsers.create(group_id: 5, user_id: 18)
GroupsUsers.create(group_id: 4, user_id: 18)
GroupsUsers.create(group_id: 6, user_id: 18)
GroupsUsers.create(group_id: 1, user_id: 18)
GroupsUsers.create(group_id: 2, user_id: 18)
GroupsUsers.create(group_id: 3, user_id: 18)
GroupsUsers.create(group_id: 1, user_id: 1)
GroupsUsers.create(group_id: 6, user_id: 2)
GroupsUsers.create(group_id: 4, user_id: 6)
GroupsUsers.create(group_id: 5, user_id: 7)
GroupsUsers.create(group_id: 3, user_id: 10)





















