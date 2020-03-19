# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clean the database"

Company.all.destroy_all
Team.all.destroy_all
User.all.destroy_all
Task.all.destroy_all

puts "Seed the database"

Company.create!(
  name: "STND"
)
Team.create!(
  team_name: "Developers",
  company_id: 1
)
Team.create!(
  team_name: "Frontend",
  company_id: 1
)
User.create!(
  password: '123456',
  email: "s@o.com",
  first_name: "Stephanie",
  last_name: "Opdam",
  manager: true,
  team_id: 1
)
User.create!(
  password: '123456',
  email: "a@u.com",
  first_name: "Amelia",
  last_name: "Urbanowicz",
  team_id: 1
)
User.create!(
  password: '123456',
  email: "g@e.com",
  first_name: "Gigi",
  last_name: "Etienne",
  team_id: 1
)
User.create!(
  password: '123456',
  email: "k@r.com",
  first_name: "Kay",
  last_name: "Rishi",
  team_id: 1
)
User.create!(
  password: '123456',
  email: "t@s.com",
  first_name: "Tom",
  last_name: "Smith",
  team_id: 1
)
User.create!(
  password: '123456',
  email: "j@b.com",
  first_name: "James",
  last_name: "Black",
  manager: true,
  team_id: 2
)
Task.create!(
  title: "Hire a replacement for Alex",
  description: "Before he leaves on the 24th of March.",
  deadline: '2020-03-24',
  hours: 5,
  minutes: 15,
  urgent: true,
  team_id: 1,
  user_id: 1
  )
Task.create!(
  title: "Send contracts to Ashurst",
  description: "Contracts need to be sent ASAP to John from marketing at Ashurst.",
  deadline: '2020-03-25',
  hours: 3,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 1
  )
Task.create!(
  title: "Write press release for Trippify",
  description: "Launch is on the 25th.",
  deadline: '2020-03-25',
  hours: 2,
  minutes: 0,
  urgent: false,
  team_id: 1,
  user_id: 1
  )
Task.create!(
  title: "Create minutes - board meeting",
  description: "Updates on recruitment for Alex's post.",
  deadline: '2020-03-23',
  hours: 1,
  minutes: 45,
  urgent: false,
  team_id: 1,
  user_id: 1
  )
Task.create!(
  title: "Prepare board meeting deck",
  description: "Water, coffee, tea, snacks, fruits, cups, plates, and napkins. Connect Amy's laptop to the screen.",
  deadline: '2020-03-23',
  hours: 7,
  minutes: 0,
  urgent: false,
  team_id: 1
  )
Task.create!(
  title: "Send invoices to SuperCycle",
  description: "Launching the website.",
  deadline: '2020-03-12',
  hours: 2,
  minutes: 0,
  urgent: true,
  team_id: 1,
  user_id: 2
  )
Task.create!(
  title: "Post ad for a new role on indeed.com",
  description: "Ask Amy for the sign off.",
  deadline: '2020-03-24',
  hours: 0,
  minutes: 15,
  urgent: false,
  team_id: 1,
  user_id: 2
  )
Task.create!(
  title: "Arrange meeting with new client - Bolt",
  description: "Prepare presentation on 'How to beat Uber'.",
  deadline: '2020-03-23',
  hours: 0,
  minutes: 15,
  urgent: false,
  team_id: 1,
  user_id: 3
  )
Task.create!(
  title: "Arrange staff lunch delivery from BunBunBun on Mondays",
  description: "Ask staff for allergies and meat/vegetarian/vegan options.",
  deadline: '2020-03-26',
  hours: 1,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 4
  )
Task.create!(
  title: "Organise team meeting on the 26th",
  description: "Discuss recent developments and introduce new team members.",
  deadline: '2020-03-26',
  hours: 0,
  minutes: 15,
  urgent: false,
  team_id: 2,
  user_id: 1
  )

puts "All done. Happy coding :)"
