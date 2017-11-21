class Mission < ApplicationRecord
  belongs_to :project
  has_many :applies

  has_many :mission_skills
  has_many :skills, through: :mission_skills

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 20}
  validates :price, presence: true
end
