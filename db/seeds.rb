# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create!(
  name: "STND"
)
Team.create!(
  team_name: "Developers",
  company_id: 1
)
User.create!(
  password: '123456',
  email: "a@t.com",
  first_name: "Amy",
  last_name: "Tinder",
  manager: true,
  team_id: 1
)
User.create!(
  password: '123456',
  email: "j@b.com",
  first_name: "James",
  last_name: "Black",
  team_id: 1
)
User.create!(
  password: '123456',
  email: "l@o.com",
  first_name: "Lily",
  last_name: "Okman",
  team_id: 1
)
User.create!(
  password: '123456',
  email: "k@r.com",
  first_name: "Kay",
  last_name: "Rishi",
  team_id: 1
)
Task.create!(
  title: "Send contracts to Ashurst",
  description: "Contracts need to be sent ASAP to John from marketing at Ashurst",
  deadline: '2020-03-20',
  etc: 10.5,
  urgent: true,
  team_id: 1,
  user_id: 1
  )
