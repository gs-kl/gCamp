class WelcomeController < ApplicationController
  def home
    @quotes = ["\"Failure is not an option. Everyone has to succeed.\" - Arnold Schwarzenegger", "\"Your time is limited, so don't waste it living someone else's life.\" - Steve Jobs", "\"Better ingredients, better pizza\" - Papa John"]
  end

  def about
  end

  def terms
  end
end
