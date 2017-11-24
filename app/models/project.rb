class Project < ApplicationRecord
  belongs_to :company
  belongs_to :user
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

end
