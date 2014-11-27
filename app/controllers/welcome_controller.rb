class WelcomeController < ApplicationController
  def home
    @quotes = Quote.all
  end

  def about
  end

  def terms
  end

  def faq
    @faq = Faq.all
  end

end
