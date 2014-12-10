class User < ActiveRecord::Base
  validates :first_name, :last_name, :email, presence: true
  validates :email, :uniqueness => true

  before_validation :downcase_email
  
  private

  def downcase_email
    self.email = self.email.downcase
  end
end
