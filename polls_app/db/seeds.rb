# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

user_1 = User.create(username: 'John')
user_2 = User.create(username: 'Paul')

poll_1 = Poll.create(title: 'Ruby', author_id: user_1.id)
poll_2 = Poll.create(title: 'Rails', author_id: user_2.id)
poll_3 = Poll.create(title: 'SQL', author_id: user_1.id)

question_1 = Question.create(text: 'What is Ruby?', poll_id: 1)
question_2 = Question.create(text: 'Why Ruby?', poll_id: 1)

question_3 = Question.create(text: 'What is Rails?', poll_id: 2)
question_4 = Question.create(text: 'Why Rails?', poll_id: 2)

question_5 = Question.create(text: 'What is SQL?', poll_id: 3)
question_6 = Question.create(text: 'Why SQL?', poll_id: 3)

answer_1 = AnswerChoice.create(text: 'A coding language', question_id: 1)
answer_2 = AnswerChoice.create(text: 'Not a coding language', question_id: 1)

answer_3 = AnswerChoice.create(text: 'Because Ruby', question_id: 2)
answer_4 = AnswerChoice.create(text: 'Not because Ruby', question_id: 2)

answer_5 = AnswerChoice.create(text: 'A template', question_id: 3)
answer_6 = AnswerChoice.create(text: 'Not a template', question_id: 3)

answer_7 = AnswerChoice.create(text: 'Because Rails', question_id: 4)
answer_8 = AnswerChoice.create(text: 'Not because Rails', question_id: 4)

