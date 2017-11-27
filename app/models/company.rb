class Company < ApplicationRecord
  belongs_to :user
  has_many :projects


  validates :name, presence: true, uniqueness: true
  validates :siret, presence: true, uniqueness: true
  validates :address, presence: true

  has_attachment :photo
end
