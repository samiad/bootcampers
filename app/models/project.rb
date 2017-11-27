class Project < ApplicationRecord
  belongs_to :company
  belongs_to :user

  accepts_nested_attributes_for :company



  has_many :missions

  validates :request_title, presence: true
  validates :request_description, presence: true, length: {minimum: 20}
  validates :budget, presence: true
  validates :request_delivery_at, presence: true

  def status
    if paid_off_at.present?
      { slug: :paid_off, label: "projet finalisé", color: "#70cb0c" }
    elsif delivered_at.present?
      { slug: :delivered, label: "livré, à régler", color: "#ff5c3e" }
    elsif signed_off_at.present?
      { slug: :signed_off, label: "en cours de développement", color: "#4b84ed" }
    elsif scoped_at.present?
      { slug: :scoped, label: "en attente de validation", color: "#f32f0b" }
    elsif accepted_at.present?
      { slug: :accepted, label: "approuvé", color: "#ffc93e" }
    else
      { slug: :request, label: "en cours d'approbation", color: "#A9A9A9" }
    end
  end

  scope :accepted, -> { where.not(accepted_at: nil).where(scoped_at: nil) }
  scope :scoped, -> { where.not(scoped_at: nil).where(signed_off_at: nil) }
  scope :ongoing, -> { where.not(signed_off_at: nil).where(delivered_at: nil) }
  scope :delivered, -> { where.not(delivered_at: nil).where(paid_off_at: nil) }

end
