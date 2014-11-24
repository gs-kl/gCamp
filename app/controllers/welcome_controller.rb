class WelcomeController < ApplicationController
  def home
    @quotes = [
      ["\"Failure is not an option. Everyone has to succeed.\"", "Arnold Schwarzenegger",],
      ["\"Your time is limited, so don't waste it living someone else's life.\"", "Steve Jobs",],
      ["\"Better ingredients, better pizza\"", "Papa John",],
    ]
  end

  def about
  end

  def terms
  end

  def faq
    @faq = [
      Faq.new("What is gCamp?", "Lengthy text from https://students.gschool.it/cohorts/5/daily_plans/2014-11-21"),
      Faq.new("How do I join gCamp?", "Lengthy text from https://students.gschool.it/cohorts/5/daily_plans/2014-11-21"),
      Faq.new("When will gCamp be finished?", "Lengthy text from https://students.gschool.it/cohorts/5/daily_plans/2014-11-21"),
    ]
  end

end
