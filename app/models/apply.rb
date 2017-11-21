class Apply < ApplicationRecord
  belongs_to :user
  belongs_to :mission

  scope :pending, -> { where(accepted_at == nil && declined_at == nil) }
  # scope :finished, -> { where(self.project.delivered_at !== nil)}
  # scope :ongoing, -> { where(pending: false && finished: false)}
end
