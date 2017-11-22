class Project < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :missions

  validates :request_title, presence: true
  validates :request_description, presence: true, length: {minimum: 20}
  validates :budget, presence: true
  validates :request_delivery_at, presence: true

  scope :finished, -> { where.not(delivered_at: nil).map(&:id) }
end
