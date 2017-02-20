# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Milestone.destroy_all
User.destroy_all
Project.destroy_all

# milestones
milestone = Milestone.create(title: "Ergonomie")
milestone = Milestone.create(title: "UI/UX")
milestone = Milestone.create(title: "Web Design")
milestone = Milestone.create(title: "Developement")
milestone = Milestone.create(title: "Integration")
milestone = Milestone.create(title: "Reco")

user = User.create(email: "george@wakatepee.com", first_name: "george", last_name:"sentbon", password: "123456", password_confirmation: "123456")
user = User.create(email: "maxime@wakatepee.com", first_name: "maxime", last_name:"Lemaitre", password: "123456", password_confirmation: "123456")
user = User.create(email: "justine@wakatepee.com", first_name: "justine", last_name:"courtois", password: "123456", password_confirmation: "123456")
user = User.create(email: "quentin@wakatepee.com", first_name: "quentin", last_name:"cassaubon", password: "123456", password_confirmation: "123456")
user = User.create(email: "hugz@wakatepee.com", first_name: "hugz", last_name:"thomas", password: "123456", password_confirmation: "123456")

project = Project.create(title:"refonte de Netflix", deadline: Date.today, admin: User.last)
project = Project.create(title:"Application mobile Canal Sport", deadline: Date.today, admin: User.last)
project = Project.create(title:"Site héphémère Coca zero", deadline: Date.today, admin: User.last)
project = Project.create(title:"Branlette espagnole Nike", deadline: Date.today, admin: User.last)
