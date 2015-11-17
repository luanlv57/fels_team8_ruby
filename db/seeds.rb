# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: 1)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

category = Category.create(name: "Basic 500")
word = Word.create(content: "test1", category_id: category.id)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)
Lesson.create(user_id: 1)
was = WordAnswer.create(content: "kiem tra 1", word_id: word.id, correct: true)
LessonWord.create(lesson_id: 1, word_id: word.id, word_answer_id: was.id)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)


word = Word.create(content: "test2", category_id: category.id)
WordAnswer.create(content: "kiem tra 2", word_id: word.id, correct: true)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)

category = Category.create(name: "Basic 1000")
word = Word.create(content: "test3", category_id: category.id)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)
WordAnswer.create(content: "kiem tra 3", word_id: word.id, correct: true)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)

word = Word.create(content: "test4", category_id: category.id)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)
WordAnswer.create(content: "answert", word_id: word.id, correct: false)
WordAnswer.create(content: "kiem tra 4", word_id: word.id, correct: true)


# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }