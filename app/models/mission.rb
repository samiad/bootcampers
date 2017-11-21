class Mission < ApplicationRecord
  belongs_to :project
  has_many :applies

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 20}
  validates :skills, presence: true
  validates :price, presence: true
end
