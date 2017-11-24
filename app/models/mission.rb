class Mission < ApplicationRecord
  belongs_to :project
  has_many :applies
  has_many :users, through: :applies

  has_many :mission_skills
  has_many :skills, through: :mission_skills

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 20}
  validates :price, presence: true

  scope :no_apply, -> { includes(:applies).where(applies: { id: nil}) }
  scope :pending, -> { includes(:applies).where(applies: { accepted_at: nil, declined_at: nil })
                                        .where.not(applies: { id: nil}) }
  scope :not_mine, -> (user) { includes(:users).where.not(users: {id: user.id}) }
  scope :mine, -> (user) { includes(:users).where(users: {id: user.id}) }
  scope :not_delivered, -> { joins(:project).where(projects: {delivered_at: nil}) }
  scope :accepted, -> { includes(:applies).where.not(applies: { accepted_at: nil})}
  scope :delivered, -> { joins(:project).where.not(projects: { delivered_at: nil}) }
  scope :scoped, -> { joins(:project).where.not(projects: {scoped_at: nil}).where(projects: {signed_off_at: nil}) }
end
