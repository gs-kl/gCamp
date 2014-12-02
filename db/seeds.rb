# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Quote.create(text: "Failure is not an option. Everyone has to succeed.", author: "Arnold Schwarzenegger")
Quote.create(text: "Your time is limited, so don't waste it living someone else's life.", author: "Steve Jobs.")
Quote.create(text: "Better ingredients, better pizza.", author: "Papa John")

Faq.create(question: "What is gCamp?", answer:"Lengthy text from https://students.gschool.it/cohorts/5/daily_plans/2014-11-21")
Faq.create(question: "How do I join gCamp?", answer:"Lengthy text from https://students.gschool.it/cohorts/5/daily_plans/2014-11-21")
Faq.create(question: "When will gCamp be finished?", answer:"Lengthy text from https://students.gschool.it/cohorts/5/daily_plans/2014-11-21")

User.create(first_name: "Tim", last_name: "Jones", email: "tim.jones@timjones.com")
