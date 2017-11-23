class Project < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :missions

  validates :request_title, presence: true
  validates :request_description, presence: true, length: {minimum: 20}
  validates :budget, presence: true
  validates :request_delivery_at, presence: true

  scope :accepted, -> { where.not(accepted_at: nil).where(scoped_at: nil) }
  scope :scoped, -> { where.not(scoped_at: nil).where(signed_off_at: nil) }
  scope :ongoing, -> { where.not(signed_off_at: nil).where(delivered_at: nil) }
  scope :delivered, -> { where.not(delivered_at: nil).where(paid_off_at: nil) }
end
