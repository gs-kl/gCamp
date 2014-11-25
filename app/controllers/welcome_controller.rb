class WelcomeController < ApplicationController
  def home
    @quotes = Quote.all
    
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
