# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
puts " No Project Existing !  "
Project.create!(name: 'Devn b', url: 'https://dev-n-b.herokuapp.com/', content: 'Mission Freelance sur une periode')
Project.create!(name: 'Skizi', url: 'https://skizi.herokuapp.com/', content: 'Application management ')
Project.create!(name: 'Task manager', url: 'https://task.herokuapp.com/', content: 'Application management ')

puts " Projects create"
