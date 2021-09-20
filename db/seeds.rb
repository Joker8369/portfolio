# Creation Database

Project.destroy_all
User.destroy_all
puts 'No Project Existing !'
puts 'no users'

admin = User.create!(name: 'admin', email: 'admin@gmail.com', password: 'tototo', password_confirmation: 'tototo')

puts 'user ok!'

Project.create!(
  name: 'Devn b',
  url: 'https://dev-n-b.herokuapp.com/',
  content: 'Mission Freelance sur une periode',
  text: '',
  user_id: admin.id
)
Project.create!(
  name: 'Skizi',
  url: 'https://skizi.herokuapp.com/',
  content: 'Application management ',
  text: '',
  user_id: admin.id
)
Project.create!(
  name: 'Task manager',
  url: 'https://task.herokuapp.com/',
  content: 'Application management ',
  user_id: admin.id
)

puts 'Projects create'
