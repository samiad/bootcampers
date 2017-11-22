class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects
  has_many :applies
  has_one :company
  has_many :missions, through: :applies

  has_attachment :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, presence: true, length: {minimum: 20}
end
