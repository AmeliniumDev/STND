# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clean the database"

Task.all.destroy_all
User.all.destroy_all
Team.all.destroy_all
Company.all.destroy_all

puts "Seed the database"

Company.create!(
  name: "STND"
)
# TEAMS
Team.create!(
  team_name: "Developers",
  company_id: 1
)
Team.create!(
  team_name: "Frontend",
  company_id: 1
)
# USERS - team 1
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
  manager: true,
  team_id: 1
)
User.create!(
  password: '123456',
  email: "g@e.com",
  first_name: "Gigi",
  last_name: "Etienne",
  manager: true,
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
# USERS - team 2
User.create!(
  password: '123456',
  email: "j@b.com",
  first_name: "James",
  last_name: "Black",
  manager: true,
  team_id: 2
)
# TASKS - team 1
Task.create!(
  title: "Write Tata Motors press release",
  description: "Tata team to review on Friday 27th March.",
  deadline: '2020-03-21',
  hours: 2,
  minutes: 0,
  urgent: false,
  team_id: 1,
  user_id: 1
  )
Task.create!(
  title: "Organise branding assets in folders",
  description: "For sales team",
  deadline: '2020-03-21',
  hours: 5,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 2
  )
Task.create!(
  title: "Talk to the BBC about Whiz",
  description: "We have to prep them for the interview with James from Whiz next week",
  deadline: '2020-03-21',
  hours: 1,
  minutes: 0,
  urgent: false,
  team_id: 1,
  user_id: 3
  )
Task.create!(
  title: "Write minutes for management board meeting",
  description: "Alex wants these detailed notes",
  deadline: '2020-03-21',
  hours: 1,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 4
  )
Task.create!(
  title: "Prepare meeting room for 1 pm",
  description: "Water, coffee, tea, snacks, fruits, cups, plates, and napkins. Connect Amy's laptop to the screen.",
  deadline: '2020-03-21',
  hours: 0,
  minutes: 30,
  urgent: false,
  team_id: 1
  )
Task.create!(
  title: "Send invoices to SuperCycle",
  description: "Launching the website.",
  deadline: '2020-03-23',
  hours: 1,
  minutes: 0,
  urgent: false,
  team_id: 1,
  user_id: 2
  )
Task.create!(
  title: "Post ad for a new role on indeed.com",
  description: "Marketing Assistant role",
  deadline: '2020-03-21',
  hours: 1,
  minutes: 15,
  urgent: false,
  team_id: 1,
  user_id: 1,
  complete: true
  )

Task.create!(
  title: "Arrange meeting with new client - Bolt",
  description: "Prepare presentation on 'How to beat Uber'.",
  deadline: '2020-03-22',
  hours: 0,
  minutes: 15,
  urgent: false,
  team_id: 1,
  user_id: 3
  )
Task.create!(
  title: "Arrange staff lunch delivery from BunBunBun on Mondays",
  description: "Ask staff for allergies and meat/vegetarian/vegan options.",
  deadline: '2020-03-23',
  hours: 1,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 4
  )
Task.create!(
  title: "Create marketing materials for client Triumph",
  description: "They need callouts with motorcyles and social media posts content",
  deadline: '2020-03-21',
  hours: 1,
  minutes: 00,
  urgent: false,
  team_id: 1,
  user_id: 2
  )

Task.create!(
  title: "Conference call with Dominic",
  description: "Conference call with Dominic to discuss April's strategy",
  deadline: '2020-03-22',
  hours: 2,
  minutes: 00,
  urgent: false,
  team_id: 1,
  user_id: 1
  )
Task.create!(
  title: "Final version of April's strategy",
  description: "Merge with Dominic's, send it out to the board of directors and team once approved.",
  deadline: '2020-03-22',
  hours: 1,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 1
  )
Task.create!(
  title: "QC the contract for New River",
  description: "Send for signature to Kathryn",
  deadline: '2020-03-22',
  hours: 1,
  minutes: 00,
  urgent: false,
  team_id: 1,
  user_id: 2
  )
Task.create!(
  title: "Add this week's new clients to the database",
  description: "Speedy Equipment, Handmade Sandwich, Soho Socks",
  deadline: '2020-03-22',
  hours: 1,
  minutes: 00,
  urgent: false,
  team_id: 1,
  user_id: 5
  )
Task.create!(
  title: "Speedy Equipment - ad strategy",
  description: "Discuss with Karen the latest developments",
  deadline: '2020-03-22',
  hours: 1,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 4
  )
Task.create!(
  title: "Speedy Equipment - meeting",
  description: "To discuss initial ad ideas and branding",
  deadline: '2020-03-22',
  hours: 1,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 4
  )
Task.create!(
  title: "Design new logo for Soho Socks",
  description: "See below for their brief: We want a new logo with our 3 key colors that is simpler and attracts more attention but remains minimalistic",
  deadline: '2020-03-22',
  hours: 1,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 3
  )
Task.create!(
  title: "Soho Socks posters",
  description: "Choose color palette for the new Soho Socks poster",
  deadline: '2020-03-22',
  hours: 1,
  minutes: 00,
  urgent: false,
  team_id: 1,
  user_id: 2
  )
Task.create!(
  title: "Sales reports - March",
  description: "Prepare team sales reports for March and send to the Finance Team",
  deadline: '2020-03-23',
  hours: 4,
  minutes: 00,
  urgent: true,
  team_id: 1,
  user_id: 5
  )
Task.create!(
  title: "Monthly team meeting",
  description: "April strategy, recent developments, introduce new team members.",
  deadline: '2020-04-01',
  hours: 1,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 1
  )
# TASKS - team 2
Task.create!(
  title: "Make video for Mercedes-Benz",
  description: "They want a new video for their new MBUX car, they've sent a very detailed script for what they want, we just need to review and execute",
  deadline: '2020-03-24',
  hours: 0,
  minutes: 15,
  urgent: false,
  team_id: 1,
  user_id: 1,
  complete: true
  )

Task.create!(
  title: "Allocate the daily tasks to the team",
  description: "Make sure no one has too little to do or too many tasks",
  deadline: '2020-03-21',
  hours: 0,
  minutes: 15,
  urgent: true,
  team_id: 1,
  user_id: 3
  )

Task.create!(
  title: "Write peer review for Anna",
  description: "To determine is she passes her probation",
  deadline: '2020-03-21',
  hours: 0,
  minutes: 15,
  urgent: false,
  team_id: 1,
  user_id: 2,
  complete: true
  )

Task.create!(
  title: "Post the Soho Socks posters to their office",
  description: "Their address is 65 Nomad Road, NW1 5EU",
  deadline: '2020-03-21',
  hours: 0,
  minutes: 30,
  urgent: false,
  team_id: 1,
  user_id: 1
  )

Task.create!(
  title: "Review Mercedes-Benz script for their new video ad",
  description: "Have it approved by Ben before starting on it",
  deadline: '2020-03-21',
  hours: 1,
  minutes: 0,
  urgent: false,
  team_id: 1,
  user_id: 3
  )

puts "All done. Happy coding :)"
