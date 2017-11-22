class Apply < ApplicationRecord
  belongs_to :user
  belongs_to :mission

  scope :pending, -> { where(accepted_at: nil, declined_at: nil).map(&:mission_id) }
end
