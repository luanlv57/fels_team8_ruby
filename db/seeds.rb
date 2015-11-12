# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = Category.create(name: "Basic 500")
word = Word.create(content: "test1", category_id: category.id)
WordAnswer.create(content: "answert", word_id: word.id)

category = Category.create(name: "Basic 1000")
word = Word.create(content: "test2", category_id: category.id)
WordAnswer.create(content: "answert", word_id: word.id)

category = Category.create(name: "Basic 500")
word = Word.create(content: "test3", category_id: category.id)
word_answer = WordAnswer.create(content: "answert", word_id: word.id)

LessonWord.create(word_id: word.id, word_answer_id: word_answer.id)

category = Category.create(name: "Basic 1000")
word = Word.create(content: "test4", category_id: category.id)
word_answer = WordAnswer.create(content: "answert", word_id: word.id)

LessonWord.create(word_id: word.id, word_answer_id: word_answer.id)