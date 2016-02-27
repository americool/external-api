require "random_data"

10.times do
  User.create!(
  name: RandomData.random_name,
  email: RandomData.random_email,
  password: RandomData.random_sentence
  )
end
  users = User.all

20.times do
  List.create!(
  user: users.sample,
  title: RandomData.random_word
  )
end
  lists = List.all

50.times do
  Item.create!(
  list: lists.sample,
  title: RandomData.random_word,
  body: RandomData.random_paragraph
  )
end
  items = Item.all
  puts "Seed worked"
  puts "#{User.count} users created"
  puts "#{List.count} lists created"
  puts "#{Item.count} items created"
