class Task < ActiveRecord::Base
  validates :description, :due_date, presence: true
  validate :past_date?, :on => :create

  def past_date?
    if self.due_date < Date.today
      errors.add(:due_date, "not in past")
    end
  end
end
